package com.laptrinhweb.healthcare.controller;

import com.laptrinhweb.healthcare.model.Handbook;
import com.laptrinhweb.healthcare.services.HandbookService;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author LuanPC
 */
@WebServlet(name="HandbookController", urlPatterns={"/HandbookController", "/handbook-list-admin", "/handbook-detail-admin"})
public class HandbookController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int page = 1;
        String search = "";

        if (request.getServletPath().equals("/handbook-list-admin")) {
            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            }
            HandbookService hanbookService = new HandbookService();
            ArrayList<Handbook> u = new ArrayList<>();
            request.setAttribute("handbooks", hanbookService.getListHandbook(page));

            request.setAttribute("currentPage", page);
            RequestDispatcher rd = request.getRequestDispatcher("Admin/Handbook/HandbookList.jsp");
            rd.forward(request, response);
        }
        
        if (request.getServletPath().equals("/handbook-detail-admin")) {
            HandbookService hanbookService = new HandbookService();
            ArrayList<Handbook> u = new ArrayList<>();
            u = hanbookService.getHandbook();
            request.setAttribute("handbooks", hanbookService.getHandbook());

            RequestDispatcher rd = request.getRequestDispatcher("Admin/Handbook/HandbookDetail.jsp");
            rd.forward(request, response);
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getServletPath().equals("/add-handbook")) {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();

            FileInputStream mFileInputStream = new FileInputStream("C:\\Users\\mikuo\\OneDrive\\Desktop\\images\\Specialty\\" + fileName);
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[1024];
            int bytesRead = 0;
            while ((bytesRead = mFileInputStream.read(b)) != -1) {
                bos.write(b, 0, bytesRead);
            }
            byte[] ba = bos.toByteArray();
            byte[] encoded = Base64.encodeBase64(ba);
            
            HandbookService handbookService = new HandbookService();
            boolean addSpecSuccess = false;
            addSpecSuccess = handbookService.addHandbook(name, encoded,description);
            if(addSpecSuccess) {
                request.setAttribute("messageResponse", "Thêm mới thành công !");
                request.setAttribute("alert", "success");
            }else {
                request.setAttribute("messageResponse", "Thêm mới không thành công !");
                request.setAttribute("alert", "danger");
            }
            RequestDispatcher rd = request.getRequestDispatcher("Admin/Handbook/AddHandbook.jsp");
            rd.forward(request, response);
        }
        
        if (request.getServletPath().equals("/edit-handbook")) {
            int id = Integer.parseInt(request.getParameter("handBookId"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();

             FileInputStream mFileInputStream = new FileInputStream("C:\\Users\\mikuo\\OneDrive\\Desktop\\images\\Specialty\\" + fileName);
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[1024];
            int bytesRead = 0;
            while ((bytesRead = mFileInputStream.read(b)) != -1) {
                bos.write(b, 0, bytesRead);
            }
            byte[] ba = bos.toByteArray();
            byte[] encoded = Base64.encodeBase64(ba);
            
            HandbookService handbookService = new HandbookService();
            boolean editSpecSuccess = false;
            editSpecSuccess = handbookService.updateHandbook(id, name, description, encoded);
            if(editSpecSuccess) {
                request.setAttribute("messageResponse", "Update thành công !");
                request.setAttribute("alert", "success");
            }else {
                request.setAttribute("messageResponse", "Update không thành công !");
                request.setAttribute("alert", "danger");
            }
            
            Handbook handbook =  handbookService.getHandbook(id);
            request.setAttribute("handbooks", handbook);
            RequestDispatcher rd = request.getRequestDispatcher("Admin/Handbook/HandbookDetail.jsp");
            rd.forward(request, response);
        }
    }

}
