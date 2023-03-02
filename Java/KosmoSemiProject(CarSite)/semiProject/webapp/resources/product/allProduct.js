$(function(){
		//var currentURL = new URL(window.location.search);
		
		let currentURL = new URL(window.location);
		let urlParams = currentURL.searchParams;
		if(urlParams.get("brand") != null){
			$("#carGradeASC").click(function(){
				location.href='carGradeOrder.do?str=productGrade ASC&brand='+urlParams.get("brand");			
			})
			$("#carGradeDESC").click(function(){
				location.href='carGradeOrder.do?str=productGrade DESC&brand='+urlParams.get("brand");			
			})

			$("#carPriceASC").click(function(){
				location.href='carGradeOrder.do?str=productPrice ASC&brand='+urlParams.get("brand");	
			})
			$("#carPriceDESC").click(function(){
				location.href='carGradeOrder.do?str=productPrice DESC&brand='+urlParams.get("brand");	
			})
		}
		else{
			$("#carGradeASC").click(function(){
				location.href='carGradeOrder.do?str=productGrade ASC';			
			})
			$("#carGradeDESC").click(function(){
				location.href='carGradeOrder.do?str=productGrade DESC';			
			})

			$("#carPriceASC").click(function(){
				location.href='carGradeOrder.do?str=productPrice ASC';	
			})
			$("#carPriceDESC").click(function(){
				location.href='carGradeOrder.do?str=productPrice DESC';	
			})
		}

		$('#brandHyundai').click(function(){
			location.href="carBrandWhere?brand=현대"
		})
		$('#brandKia').click(function(){
			location.href="carBrandWhere?brand=기아"
		})
		$('#brandAudi').click(function(){
			location.href="carBrandWhere?brand=아우디"
		})
		$('#brandBMW').click(function(){
			location.href="carBrandWhere?brand=BMW"
		})
		$('#brandChevrolet').click(function(){
			location.href="carBrandWhere?brand=쉐보레"
		})
		
		$('#brandJeep').click(function(){
			location.href="carBrandWhere?brand=지프"
		})
		$('#brandBenz').click(function(){
			location.href="carBrandWhere?brand=벤츠"
		})
		$('#brandPorsche').click(function(){
			location.href="carBrandWhere?brand=포르쉐"
		})
		// 장바구니 구현
 		$('#productListTable  td  #basket').click(function(){
 			$.ajax({
				type:"post",
				url:"addShopBasket.do",
				contentType : "application/x-www-form-urlencoded;charset=UTF-8",
				data:{
					productID : $(this).parents('#productListTable').find('#productListID').text(),
					productPrice : $(this).parents('#productListTable').find('#productListPrice').text() ,
					productImageSrc : $(this).parents('#productListTable').find('#productListImgSrc').attr("src")	
					
				},
				success:function(message){
					alert(message);
				}
			}) // end of ajax 
		})// end of click 
		
/* 		$('#productListTable  td  a').click(function(){
			alert($(this).parents('#productListTable').find('#productListImgSrc').attr("src"));
		}) */


				
	})//end of function