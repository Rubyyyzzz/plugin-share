package com.snnew.www.util;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import com.github.junrar.Archive;
import com.github.junrar.exception.RarException;
import com.github.junrar.exception.RarException.RarExceptionType;
import com.github.junrar.rarfile.FileHeader;
/*
 * Created by wowill on 2017/8/11.
 */
public class DeCompressUtil {
    /**
     * @param zipOutFile
     *            The file will be generated
     * @param zipInputFile
     *            To compress the file or folder
     * @throws IOException
     */
    public static boolean zipCompressing(File zipOutFile, File zipInputFile)
            throws IOException {
        boolean flag = true;
        ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(
                zipOutFile));
        BufferedOutputStream bos = new BufferedOutputStream(zos);
        flag = zipCompressingStream(zos, zipInputFile, zipOutFile.getAbsolutePath(),
                bos);
        bos.close();
        zos.close();
        return flag;
    }

    /**
     * @param zipFileName
     *            The name of the zip file will be generated
     * @param zipInputFile
     *            To compress the file or folder
     * @throws IOException
     */
    public static boolean  zipCompressing(String zipFileName, String zipInputFile)
            throws IOException {
        return zipCompressing(new File(zipFileName), new File(zipInputFile));
    }

    /**
     *
     * @param out
     *            The implementation of file compression flow
     * @param f
     *            To compress the file or folder
     * @param base
     *            Root node of the compressed file
     * @param bos
     *            The compression stream buffer
     * @throws IOException
     */
    public static boolean zipCompressingStream(ZipOutputStream out, File f,
                                               String base, BufferedOutputStream bos) throws IOException {
        boolean flag = true;
        if (f.isDirectory()) {
            File[] f1 = f.listFiles();
            if (f1.length == 0) {
                out.putNextEntry(new ZipEntry(base + "/"));
            } else {
                for (int i = 0; i < f1.length; i++) {
                    File file = f1[i];
                    flag =   flag && zipCompressingStream(out, file, file.getName(), bos);
                }
            }

        } else {
            out.putNextEntry(new ZipEntry(base));
            FileInputStream in = new FileInputStream(f);
            BufferedInputStream bis = new BufferedInputStream(in);
            int b;

            while ((b = bis.read()) != -1) {
                bos.write(b);
            }
            bos.flush();
            bis.close();
            in.close();
            flag = true;
        }
        return flag;
    }

    /**
     *
     * @param zipFile
     *            To unzip the files
     * @param outputPath
     *            Extract the location
     */
    public static void  zipDecompressing(File zipFile, String outputPath)
            throws IOException {

        ZipInputStream zis = new ZipInputStream(new FileInputStream(zipFile));
        BufferedInputStream bis = new BufferedInputStream(zis);

        File fOut = null;
        ZipEntry entry = null;
        while ((entry = zis.getNextEntry()) != null && !entry.isDirectory()) {

            fOut = new File(outputPath, entry.getName());

            if (!fOut.exists()) {
                (new File(fOut.getParent())).mkdirs();
            }

            FileOutputStream fos = new FileOutputStream(fOut);

            BufferedOutputStream bos = new BufferedOutputStream(fos);
            int b;
            while ((b = bis.read()) != -1) {
                bos.write(b);
            }
            bos.close();
            fos.close();
        }
        bis.close();
        zis.close();

    }



    /**
     * @param rarFileName rar file name
     * @param outFilePath output file path
     * @return success Or Failed
     * @author zhuss
     * @throws Exception
     */
    public static boolean  unrar(String rarFileName, String outFilePath)  throws  Exception{

        boolean flag = false;
        try  {
            Archive archive = new  Archive(new File(rarFileName));
            if(archive == null){
                throw new FileNotFoundException(rarFileName + " NOT FOUND!");
            }
            if(archive.isEncrypted()){
                throw new Exception(rarFileName + " IS ENCRYPTED!");
            }
            List<FileHeader> files =  archive.getFileHeaders();
            for (FileHeader fh : files) {
                if(fh.isEncrypted()){
                    throw new Exception(rarFileName + " IS ENCRYPTED!");
                }
                String fileName = fh.getFileNameW();
                if(fileName != null && fileName.trim().length() > 0){
                    String saveFileName = outFilePath+"\\"+fileName;
                    File saveFile = new File(saveFileName);
                    File parent =  saveFile.getParentFile();
                    if(!parent.exists()){
                        parent.mkdirs();
                    }
                    if(!saveFile.exists()){
                        saveFile.createNewFile();
                    }
                    FileOutputStream fos = new FileOutputStream(saveFile);
                    try {
                        archive.extractFile(fh, fos);
                        fos.flush();
                        fos.close();
                    } catch (RarException e) {
                        if(e.getType().equals(RarExceptionType.notImplementedYet)){
                        }
                    }finally{
                    }
                }
            }
            flag = true;
        } catch  (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return flag;
    }
}
