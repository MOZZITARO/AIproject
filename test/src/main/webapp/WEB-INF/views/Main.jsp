<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 		* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Malgun Gothic', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
        }
        
          .header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .header h1 {
            color: #667eea;
            font-size: 2.5rem;
            margin-bottom: 10px;
            font-weight: 700;
        }
        
        .header p {
            color: #666;
            font-size: 1.1rem;
            line-height: 1.6;
        }
        
        .upload-section {
            margin-bottom: 40px;
        }
        
        .version-tag {
            display: inline-block;
            background: #4CAF50;
            color: white;
            padding: 8px 16px;
            border-radius: 20px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        /* 숨겨진 파일 입력 */
        .file-input {
            display: none;
        }
        
        /* 커스텀 업로드 박스 */
        .upload-box {
            border: 3px dashed #ccc;
            border-radius: 15px;
            padding: 60px 20px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
            background: #fafafa;
            position: relative;
            min-height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        
        .upload-box:hover {
            border-color: #667eea;
            background: #f0f4ff;
            transform: translateY(-2px);
        }
        
        .upload-box.dragover {
            border-color: #667eea;
            background: #e8f2ff;
            transform: scale(1.02);
        }
        
        .upload-icon {
            font-size: 3rem;
            color: #ccc;
            margin-bottom: 15px;
        }
        
        .upload-text {
            color: #666;
            font-size: 1.2rem;
            margin-bottom: 10px;
        }
        
        .upload-hint {
            color: #999;
            font-size: 0.9rem;
        }
        
         /* 이미지 미리보기 */
        .preview-container {
            display: none;
            text-align: center;
        }
        
        .preview-image {
            max-width: 100%;
            max-height: 300px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            margin-bottom: 15px;
        }
        
        .image-info {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 15px;
        }
        
        .remove-btn {
            background: #ff4757;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: background 0.3s ease;
        }
        
        .remove-btn:hover {
            background: #ff3742;
        }
        
         /* 버튼 섹션 */
        .button-section {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .btn {
            padding: 15px 30px;
            margin: 0 10px;
            border: none;
            border-radius: 25px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }
        
        .btn-primary {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
        }
        
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }
        
        .btn-secondary {
            background: #FFA726;
            color: white;
        }
        
        .btn-secondary:hover {
            background: #FF9800;
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(255, 167, 38, 0.3);
        }
</style>
<body>
<div class="container">

		<div class="header">
            <h1>🧊 냉장고 재료 이미지 분석</h1>
            <p>냉장고 재료 이미지를 업로드하면 이를 분석하여 조리 가능한 선택지를 제공합니다.<br>관련 레시피 목록을 제공합니다.</p>
        </div>
        
        <div class="upload-section">
        
        	<!-- 숨겨진 파일 입력 (multiple 속성으로 여러 파일 선택 가능) -->
            <input type="file" id="fileInput" class="file-input" multiple>
            
              <!-- 커스텀 업로드 박스 -->
            <div class="upload-box" id="uploadBox">
                <div class="upload-content" id="uploadContent">
                    <div class="upload-icon">📷</div>
                    <div class="upload-text">재료 이미지 드롭 (드래그, 업로드 등)</div>
                    <div class="upload-hint">클릭하거나 파일을 드래그하여 업로드하세요</div>
                </div>
                
                <!-- 이미지 미리보기 (처음에는 숨김) -->
                <div class="preview-container" id="previewContainer">
                    <img class="preview-image" id="previewImage" alt="미리보기">
                    <div class="image-info" id="imageInfo"></div>
                    <button class="remove-btn" id="removeBtn">이미지 제거</button>
                </div> 
        
                 <div class="button-section">
                 <button class="btn btn-primary" id="analyzeBtn" disabled>조회</button>               
                </div>
        
        </div>
</div>
<script>

</script>
</body>
</html>