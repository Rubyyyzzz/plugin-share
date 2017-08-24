package com.snnew.www.controller;

import com.snnew.www.dao.BaseDao;
import com.snnew.www.pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wowill on 2017/8/8.
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private BaseDao baseDao;

    @RequestMapping("/")
    public String turnToIndex(){

        return "show/index";
    }

    public void updateBrowseNum(int positionId){
        Product product = (Product) baseDao.getByHQL("from Product where id = ?",positionId);
        int number = product.getBrowse_num()+1;
        baseDao.queryHql("update Product set browse_num = ? where id = ?",number, positionId);

    }

    @ResponseBody
    @RequestMapping("/showDownloadNum")
    public Map<String, Object> showDownloadNum(int positionId){
        Product product = (Product) baseDao.getByHQL("from Product where id = ?",positionId);
        int number = product.getDownload_num();
        boolean result = true;
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("data", number);
        map.put("result", result);
        return map;
    }

    @ResponseBody
    @RequestMapping("/updateDownloadNum")
    public Map<String, Object> updateDownloadNum(int positionId){
        Product product = (Product) baseDao.getByHQL("from Product where id = ?",positionId);
        int number = product.getDownload_num()+1;
        baseDao.queryHql("update Product set download_num = ? where id = ?",number, positionId);
        boolean result = true;
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("data", number);
        map.put("result", result);
        return map;
    }

    @RequestMapping("/showDetail/{positionId}")
        public String showDetail(@PathVariable int positionId, HttpServletRequest request){
        updateBrowseNum(positionId);
        Product product = (Product) baseDao.getByHQL("from Product where id = ?",positionId);
        if(product.getBrowse_num() == 0){
            product.setBrowse_num(1);
        }
        System.out.println(product.toString());
        request.setAttribute("product", product);
        return "show/showDetail";
    }

    @ResponseBody
    @RequestMapping("/getProductList")
    public Map<String, Object> getProductList(HttpServletRequest request, HttpServletResponse response){

        Long total = null;
        List<Product> data = null;
        int page = Integer.parseInt(request.getParameter("page"));
        int rows = Integer.parseInt(request.getParameter("rows"));

        String fId = request.getParameter("fId");
        String sId = request.getParameter("sId");
        System.out.println("fid:"+fId.length());
        if(fId.length() < 1){
            fId = null;
        }
        if(sId.length() < 1){
            sId = null;
        }
        if(fId != null && sId != null) {
            total = baseDao.countByHql("select count(*) from Product where belong_root_id = ? and belong_id = ?",fId, sId);
            data = baseDao.findPageByFetchedHql("from Product where belong_root_id = ? and belong_id = ?","select count(*) from Product where belong_root_id = ? and belong_id = ?", page, rows, fId, sId).getResults();
        }
        else if(fId == null && sId != null) {
            total = baseDao.countByHql("select count(*) from Product where belong_id = ?", sId);
            data = baseDao.findPageByFetchedHql("from Product where belong_id = ?","select count(*) from Product where and belong_id = ?", page, rows, sId).getResults();
        }
        else if(fId != null && sId == null){
            total = baseDao.countByHql("select count(*) from Product where belong_root_id = ?",fId);
            data = baseDao.findPageByFetchedHql("from Product where belong_root_id = ?","select count(*) from Product where belong_root_id = ?", page, rows, fId).getResults();
        }
        else{
            total = baseDao.countByHql("select count(*) from Product");
            data = baseDao.findPageByFetchedHql("from Product","select count(*) from Product", page, rows).getResults();
            System.out.println("data:"+data);
            System.out.println("total:"+total);
        }
        boolean result = (data == null) ? false : true;
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("data", data);
        map.put("total", total);
        map.put("result", result);

        return map;

    }
}
