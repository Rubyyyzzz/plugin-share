package com.snnew.www.controller;

import com.snnew.www.pojo.Menu;
import com.snnew.www.pojo.Product;
import com.snnew.www.dao.BaseDao;
import com.snnew.www.util.DeCompressUtil;
import com.snnew.www.util.ZipUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wowill on 2017/8/8.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private BaseDao baseDao;

    @RequestMapping("/index")
    public String index(){
        return "/admin/index";
    }

    @RequestMapping("/dataListManager")
    public String dataListManager(){
        return "/admin/dataListManager";
    }

    @RequestMapping("/addNewData")
    public String addNewData(HttpServletRequest request, HttpSession session){
        Long total = baseDao.countByHql("select count(*) from Product");
        session.setAttribute("positionId",total+1);
        return "/admin/addNewData";
    }
    @RequestMapping("/saveNewData")
    public String saveNewData(HttpServletRequest request, Product product){

        product.setUpload_ip(request.getRemoteAddr());
        baseDao.save(product);
        return "redirect:/admin/dataListManager";
    }



    @ResponseBody
    @RequestMapping("/menuList")
    public Map<String, Object> menuList(){

        Map<String, Object> map = new HashMap<>();
        List<Menu> list = baseDao.getListByHQL("from Menu menu");
        map.put("data", list);
        map.put("result", 1);
        return map;
    }

    @ResponseBody
    @RequestMapping("/fileUpload")
    public Map<String, Object> fileUpload(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, HttpSession session) throws Exception {

        Map<String, Object> map = new HashMap<>();
        if (file.getSize() > 0){
            String filename = file.getOriginalFilename();
            String path = "";
            String basePath = session.getServletContext().getRealPath("/");
            String leftPath = basePath;
            String rightPath = "";
            String allPath = "";
            if(filename.endsWith("jpg") || filename.endsWith("png") || filename.endsWith("gif")){
                rightPath = "/upload/images";
            }
            else if (filename.endsWith("rar") || filename.endsWith("zip")){
                rightPath = "/upload/compress";

            }
            else{
                rightPath = "/upload/other";
            }
            allPath = leftPath + rightPath;
            File fileSave = new File(allPath,filename);

            if(!fileSave.exists()){
                fileSave.mkdirs();
            }
            file.transferTo(fileSave);
            map.put("path", request.getScheme() + "://"
                    + request.getServerName() + ":" + request.getServerPort()+rightPath+"/"+filename);
            System.out.println(fileSave.getPath());
            map.put("status", 0);
            if(fileSave.exists()) {
                System.out.println("文件已上传！");
                if(filename.endsWith("rar")) {
                    String outpath = leftPath+"/upload/decompress";
                    System.out.println(outpath);
                    File fileOut = new File(outpath);
                    if(!fileOut.exists()){
                        fileOut.mkdirs();
                    }
                    DeCompressUtil.unrar(leftPath+rightPath+"/"+filename,outpath);
                }
                else if(filename.endsWith("zip")){
                    String outpath = leftPath+"/upload/decompress";
                    File fileOut = new File(outpath);
                    if(!fileOut.exists()){
                        fileOut.mkdirs();
                    }
                    rightPath = "/upload/decompress";
                    ZipUtil.unZiFiles(leftPath+rightPath+"/"+filename,outpath);
                    map.put("show_url",request.getScheme() + "://"
                            + request.getServerName() + ":" + request.getServerPort()+rightPath+"/"+filename.substring(0,filename.lastIndexOf("."))+"/index.html");
                }
            }

        }
        else{
            map.put("status",1);
        }
        return map;
    }


}
