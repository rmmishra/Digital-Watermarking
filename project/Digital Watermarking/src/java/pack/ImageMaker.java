package pack;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImageMaker {
	// change it
public static final String path="D:/eclipse/eclipse luna/workspace/digital watermarking/WebContent/water-mark-image/";
	// change it
	String imgpath="D:/eclipse/eclipse luna/workspace/digital watermarking/WebContent/water-mark-image/";		
	
	
	public void txtToImage(String text) {
		
		try{
	        
	        BufferedImage img = new BufferedImage(1, 1, BufferedImage.OPAQUE);
	        Graphics2D g2d = img.createGraphics();
	        Font font = new Font("Arial", Font.PLAIN, 48);
	        g2d.setFont(font);
	        FontMetrics fm = g2d.getFontMetrics();
	        int width = fm.stringWidth(text);
	        int height = fm.getHeight();
	        g2d.dispose();

	        img = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
	        g2d = img.createGraphics();
	        g2d.setRenderingHint(RenderingHints.KEY_ALPHA_INTERPOLATION, RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY);
	        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
	        g2d.setRenderingHint(RenderingHints.KEY_COLOR_RENDERING, RenderingHints.VALUE_COLOR_RENDER_QUALITY);
	        g2d.setRenderingHint(RenderingHints.KEY_DITHERING, RenderingHints.VALUE_DITHER_ENABLE);
	        g2d.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
	        g2d.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
	        g2d.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
	        g2d.setRenderingHint(RenderingHints.KEY_STROKE_CONTROL, RenderingHints.VALUE_STROKE_PURE);
	        g2d.setFont(font);
	        fm = g2d.getFontMetrics();
	        g2d.setColor(Color.BLACK);
	        g2d.drawString(text, 0, fm.getAscent());
	        g2d.dispose();
	        try {
	            ImageIO.write(img, "png", new File(imgpath+text+".png"));
	        } catch (IOException ex) {
	            ex.printStackTrace();
	        }
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		
	}
	
	public void multiImage(String imgName1, String imgName2, String text){
		
		try{
			
			BufferedImage image = ImageIO.read(new File(imgpath+imgName1));
			BufferedImage overlay = ImageIO.read(new File(imgpath+imgName2));

			// create the new image, canvas size is the max. of both image sizes
			int w = Math.max(image.getWidth(), overlay.getWidth());
			int h = Math.max(image.getHeight(), overlay.getHeight());
			BufferedImage combined = new BufferedImage(w, h, BufferedImage.OPAQUE);

			// paint both images, preserving the alpha channels
			Graphics g = combined.getGraphics();
			g.drawImage(image, 0, 0, null);
			g.drawImage(overlay, 0, 0, null);

			// Save as new image
			ImageIO.write(combined, "jpg", new File(imgpath+text+".jpg"));

			
		}catch(Exception e){
			System.out.println(e);
		}
		
	}
	
	public void imageToImage(String bgimg, String fgimg){
		
		try{
			
			BufferedImage image = ImageIO.read(new File(imgpath+bgimg));
			BufferedImage overlay = ImageIO.read(new File(imgpath+fgimg));

			// create the new image, canvas size is the max. of both image sizes
			int w = Math.max(image.getWidth(), overlay.getWidth());
			int h = Math.max(image.getHeight(), overlay.getHeight());
			BufferedImage combined = new BufferedImage(w, h, BufferedImage.OPAQUE);

			// paint both images, preserving the alpha channels
			Graphics g = combined.getGraphics();
			g.drawImage(image, 0, 0, null);
			g.drawImage(overlay, w/4, h/4, w/2, h/2, null);

			// Save as new image
			ImageIO.write(combined, "jpg", new File(imgpath+fgimg.substring(0, 2)+bgimg.substring(0, 2)+".jpg"));

			
		}catch(Exception e){
			System.out.println(e);
		}
		
	}
	

}
