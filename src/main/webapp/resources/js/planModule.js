let PlanModule = ( ()=>{
	var map;
	
    function myplan(){
		$.ajax({
			type :'get',
			dataType :'json',
			url : 'myplan?p_id=1',//p_id=1 1대신에 변수로 p_id값을 받는걸로대체
			cache: false,
			processData : true,
			success : function(response) {
				var vo=response.vo;
				//플랜아이디로 받아온 플랜정보를vo로 받고 처리할부분
			},
			error : function(err) {
				alert('error: ' + err.status);
			}

		})		
	}

	function memberplan(){
		$.ajax({
			type :'get',
			dataType :'json',
			url : 'memberplan?m_id=1',//p_id=1 1대신에 변수로 p_id값을 받는걸로대체
			cache: false,
			processData : true,
			success : function(response) {
				var lvo=response.lvo;
				
				
			},
			error : function(err) {
				alert('error: ' + err.status);
			}

		})
		
	}
    
	function saveP(){
		$.ajax({
			type :'post',
			contentType:'application/json',
			dataType :'text',
			url : 'plan',
			data:JSON.stringify({
				 p_id: p_id,
	             m_id: m_id,
	             p_name: p_name,
	             p_birth: p_birth,
	             p_moddate: p_moddate
			}),
			cache: false,
			processData : true,
			success : function(response) {
				alert(response);
			},
			error : function(err) {
				alert('error: ' + err.status);
			}

		})
		
	}

    function tour(lat, len) {
		let x = lat;
		let y = len;

		$.ajax({
			type : 'get',
			dataType : 'json',
			url : 'tour?x=' + x + '&y=' + y,
			cache : false,
			processData : true,
			success : function(res) {
			
			displayTourInformation(res.contentList,x,y);
			
			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
	}

    function displayTourInformation(contentList,x,y) {
		var tcontainer = $('.places-container'); // 새로운 container 추가
		//var container = document.getElementById('travels-container');
		// 기존 내용 비우기
		tcontainer.empty();
		map=new naver.maps.Map('map',{
		center:new naver.maps.LatLng(y,x),
		zoom:8
		});
		// 최대 10개까지만 표시
		for (var i = 0; i < Math.min(contentList.length, 200); i++) {
			let content = contentList[i];
				
			let contentid=content.contentid;
			let url = "/tourInfo?contentid=" + contentid;
			// 새로운 div 동적으로 생성
			// var newDiv = $('<div>').addClass('traveld').attr('id', 'content' + i).click(function() {
	        // copyDiv('content' + i);
	    	//}); 
	    
			let placeDiv = ViewPageModule.createPlaceDiv(url,content);
			
			tcontainer.append(placeDiv);
			
			var marker = new naver.maps.Marker({
		            position: new naver.maps.LatLng(content.mapy, content.mapx),
		            map: map
		        });
			
		        // 클로저를 사용하여 정보창 내용 설정
		        (function (marker, title,firstimage) {
		            var infoWindow = new naver.maps.InfoWindow({
		              content: '<div style="width:150px; text-align:center; padding:10px;"><b>' + title + '</b>.<br><img src="' + content.firstimage + '"></div>'
		            });

		            naver.maps.Event.addListener(marker, 'click', function () {
		                infoWindow.open(map, marker,firstimage);
		            });
		        })(marker, content.title,content.firstimage);

		}
	
		// 추가로 필요한 정보는 여기에 계속 추가할 수 있습니다.
	}
			// 함수 외부에서 count 변수 선언
			var countx = 0;
			var count = document.createElement('div');
			count.className = 'count';
			let PcontentVo=[];
			let HcontentVo=[];
			
			function copyPlaceDiv(sourceDivId,content) {
			    var id = sourceDivId;
			    // 클릭된 div의 내용을 가져오기
			    var sourceDiv = document.getElementById(id);
			    var divText = sourceDiv.innerHTML.trim();
			    // 내용이 있는 경우에만 실행
			    if (divText !== "") {
			        // selected-container가 없을 경우
			        
			        var targetDiv = document.getElementById('selected-container');
			        
			        if (!targetDiv) {
			            // 새로운 div 생성
			            if (document.getElementById('selected-container') || document.getElementById('hselected-container')) {
    				PcontentVo=[];
    				removeDiv();}
    					countx++; // 함수가 실행되었기 때문에 1 증가
			        	count.innerHTML = "선택한 장소:"+countx+"개";
			            var newDiv = document.createElement('div');
			            newDiv.id = 'selected-container';
			
			            var selectedDiv = document.createElement('div');
			            selectedDiv.className = 'selected';
			            selectedDiv.id = 'C' + sourceDivId;
			            selectedDiv.innerHTML = divText;
			           
			
			            var resetbtn = document.createElement('button');
			            resetbtn.innerHTML = 'Reset Div';
			            resetbtn.addEventListener('click', function(){
			            	resetDiv();
			            	PcontentVo=[];
			            });
						
						var endbtn=document.createElement('button');
						endbtn.innerHTML="선택 완료";
						endbtn.id='endsel';
						endbtn.addEventListener('click', selectend);						
			
			            // 생성된 div를 특정 위치에 추가 (예: 다른 div의 하위로)
			            var destinationContainer = document.getElementById("wrapcontainer");
			            var mapw = document.getElementById("map-container");
			            mapw.parentNode.insertBefore(newDiv, mapw);
						
						let buttonDiv=document.createElement('div');
						buttonDiv.id='reset';
						
						
			            newDiv.appendChild(count);
			            newDiv.appendChild(buttonDiv);
			            buttonDiv.appendChild(resetbtn); // 리셋 버튼을 removebtn 다음으로 추가
			            newDiv.appendChild(selectedDiv);
			            newDiv.appendChild(endbtn);
			            
			            // JavaScript DOM을 이용한 선택
			           var parentContainer = document.getElementById("CplaceContainer"+content.contentid);
						var newbutton = parentContainer.querySelector('#Button'+content.contentid);
						// 이벤트 핸들러 연결
						newbutton.addEventListener('click', function() {
						    PcontentVo = PcontentVo.filter(function (item) {
        							return item !== content;
        							});
						    removeCDiv(selectedDiv);
						});
						PcontentVo.push(content);
			        } else {
			        	countx++; // 함수가 실행되었기 때문에 1 증가
			        	count.innerHTML = "선택한 장소:"+countx+"개";
			            // 이미 존재하는 selected-container에 내용 추가
			            var selectedDiv = document.createElement('div');
			            selectedDiv.className = 'selected';
			            selectedDiv.id = 'C' + sourceDivId;
			            selectedDiv.innerHTML = divText;
			            // 생성된 div를 특정 위치에 추가 (예: 다른 div의 하위로)
			            var endbtn=document.getElementById('endsel');
			            targetDiv.insertBefore(selectedDiv,endbtn);
			            // JavaScript DOM을 이용한 선택
			           var parentContainer = document.getElementById("CplaceContainer"+content.contentid);
						var newbutton = parentContainer.querySelector('#Button'+content.contentid);
						// 이벤트 핸들러 연결
						newbutton.addEventListener('click', function() {
						    PcontentVo = PcontentVo.filter(function (item) {
        							return item !== content;
        							});
						    removeCDiv(selectedDiv);
						});
						PcontentVo.push(content);
			        }
			    }
			}
			
			function removeDiv() {
			    countx = 0; // countx 값을 0으로 초기화
			    count.innerHTML = countx; // count도 초기화
			
			    var Div = document.getElementById("selected-container");
			    if(Div){
			    var parent = Div.parentNode;
			     if (parent) {
			        parent.removeChild(Div);
			    }}
			    
			    var HDiv = document.getElementById("hselected-container");
			    if(HDiv){
			    
			    var Hparent = HDiv.parentNode;
					
			    if (Hparent) {
			        Hparent.removeChild(HDiv);
			    }
			}}
			
			function resetDiv() {
			    countx = 0; // countx 값을 0으로 초기화
			    count.innerHTML = "선택한 장소:"+countx+"개"; // count도 초기화
			    var selectedDivs = document.getElementsByClassName("selected");
			    var parent;
			
			    // NodeList를 배열로 변환하여 반복문을 사용
			    Array.from(selectedDivs).forEach(function (selectedDiv) {
			        parent = selectedDiv.parentNode;
			        if (parent) {
			            parent.removeChild(selectedDiv); // 부모 노드에서 제거
			        }
			    });
			}
			
			function removeCDiv(selectedDiv) {
			    countx--; // countx 값을 0으로 초기화
			    count.innerHTML = "선택한 장소:"+countx+"개"; // count도 초기화
			    var Div = document.getElementById(selectedDiv.id);
			    var parent = Div.parentNode;
			
			    if (parent) {
			        parent.removeChild(Div);
			   		
			    }
			    
			}
			function selectend(){
				 $(".view").attr("id","view3");
                 ViewPageModule.viewPageLoding();
                 lodging(x,y);
                 SidebarModule.initialize();
                 ViewPageModule.showView('view3', '#btn-step3');
                 removeDiv();
               
			}
			
			function Hselectend(){
				let startDate = new Date(sessionStorage.getItem('startDate'));
        		let endDate = new Date(sessionStorage.getItem('endDate'));
				let travelperiod=ViewPageModule.getDates(startDate,endDate).length-1;
				let childs=$('#hselected-container').children().length-3;

				if(travelperiod==childs){
							
				
				var data = {					
				 	pname:cityname+"여행",
					place: PcontentVo,
					hotel: HcontentVo,
					startdate : startDate,
					enddate : endDate
				};
					
				$.ajax({
					type: "POST",
					url: "/NewFile",
					contentType: "application/json",
					data: JSON.stringify(data),
					success: function(response) {
						window.location.href = "/NewFile";
					},
					error: function(error) {
						
					}
				});
				removeDiv();}else{
					alert('일정의 기간에 비해 숙소의 개수가 적습니다');

				}

			}
			
	//호텔
    function displayLodgingInformation(contentList,x,y) {
		var tcontainer = $('.places-container'); // 새로운 container 추가
		//var container = document.getElementById('travels-container');
		// 기존 내용 비우기
		tcontainer.empty();
		map=new naver.maps.Map('map',{
		center:new naver.maps.LatLng(y,x),
		zoom:15
		});
		// 최대 10개까지만 표시
		for (var i = 0; i < contentList.length; i++) {

			var content = contentList[i];
			var contentid=content.contentid;
			let url = "/tourInfo?contentid=" + contentid;
			// 새로운 div 동적으로 생성
			/* var newDiv = $('<div>').addClass('traveld').attr('id', 'content' + i).click(function() {
	        copyDiv('content' + i);
	    	}); */
	    
			var placeDiv = ViewPageModule.createHotelDiv(url,content);
			
			tcontainer.append(placeDiv);
			
			 var marker = new naver.maps.Marker({
		            position: new naver.maps.LatLng(content.mapy, content.mapx),
		            map: map,
		            icon:{url:'/resources/img/marker/캡처.PNG'}
		        });
		        // 클로저를 사용하여 정보창 내용 설정
		        (function (marker, title) {
		            var infoWindow = new naver.maps.InfoWindow({
		                content: '<div style="width:150px;text-align:center;padding:10px;"><b>"' + title + '"</b>.<br><img src="'+content.firstimage+'" style="width:100px; text-align:center;"></div>'
		            });

		            naver.maps.Event.addListener(marker, 'click', function () {
		                infoWindow.open(map, marker);
		            });
		        })(marker, content.title);
		       
		
		}

		// 추가로 필요한 정보는 여기에 계속 추가할 수 있습니다.
	}
			
	
	function copyHotelDiv(sourceDivId,content) {
			    var id = sourceDivId;
			    // 클릭된 div의 내용을 가져오기
			    var sourceDiv = document.getElementById(id);
			    var divText = sourceDiv.innerHTML.trim();
			    let startDate = new Date(sessionStorage.getItem('startDate'));
        		let endDate = new Date(sessionStorage.getItem('endDate'));
				let travelperiod=ViewPageModule.getDates(startDate,endDate).length-1;
				let childs=$('#hselected-container').children().length-3;
			    // 내용이 있는 경우에만 실행
			    if (divText !== ""&&travelperiod>childs) {
			        // selected-container가 없을 경우
			         var targetDiv = document.getElementById('hselected-container');
			        
			        if (!targetDiv) {
			        if (document.getElementById('selected-container') || document.getElementById('hselected-container')) {
			        HcontentVo=[];
    				removeDiv();}
    				countx++; // 함수가 실행되었기 때문에 1 증가
			        count.innerHTML = "선택한 장소:"+countx+"개";
			            // 새로운 div 생성
			            var newDiv = document.createElement('div');
			            newDiv.id = 'hselected-container';
			
			            var selectedDiv = document.createElement('div');
			            selectedDiv.className = 'selected';
			            selectedDiv.id = 'C' + sourceDivId;
			            selectedDiv.innerHTML = divText;
			
			
			            var resetbtn = document.createElement('button');
			            resetbtn.innerHTML = 'Reset Div';
			            resetbtn.addEventListener('click', function(){
			            resetDiv();
			            HcontentVo=[];
			            });
			            
			            var endbtn=document.createElement('button');
						endbtn.innerHTML="선택 완료";
						endbtn.id='endHsel';
						endbtn.addEventListener('click',Hselectend);
						
						
						
			            // 생성된 div를 특정 위치에 추가 (예: 다른 div의 하위로)
			            var destinationContainer = document.getElementById("wrapcontainer");
			            var mapw = document.getElementById("map-container");
			            mapw.parentNode.insertBefore(newDiv, mapw);
			
			            newDiv.appendChild(count);
			            newDiv.appendChild(resetbtn); // 리셋 버튼을 removebtn 다음으로 추가
			            newDiv.appendChild(selectedDiv);
			            newDiv.appendChild(endbtn);
			            var parentContainer = document.getElementById("ChotelContainer"+content.contentid);
						var newbutton = parentContainer.querySelector('#Button'+content.contentid);
						// 이벤트 핸들러 연결
						newbutton.addEventListener('click', function() {
						       HcontentVo = HcontentVo.filter(function (item) {
        							return item !== content;
        							});
						       removeCDiv(selectedDiv);
						    }
						    
						  );
						    HcontentVo.push(content);
			        } else {
			        countx++; // 함수가 실행되었기 때문에 1 증가
			        count.innerHTML = "선택한 장소:"+countx+"개";
			            // 이미 존재하는 selected-container에 내용 추가
			            var selectedDiv = document.createElement('div');
			            selectedDiv.className = 'selected';
			            selectedDiv.id = 'C' + sourceDivId;
			            selectedDiv.innerHTML = divText;
			            // 생성된 div를 특정 위치에 추가 (예: 다른 div의 하위로)
			            var endbtn=document.getElementById("endHsel");
			            targetDiv.insertBefore(selectedDiv,endbtn);
			            // JavaScript DOM을 이용한 선택
			           var parentContainer = document.getElementById("ChotelContainer"+content.contentid);
						var newbutton = parentContainer.querySelector('#Button'+content.contentid);
						// 이벤트 핸들러 연결
						newbutton.addEventListener('click', function() {
						       HcontentVo = HcontentVo.filter(function (item) {
        							return item !== content;
        							});
						       removeCDiv(selectedDiv);
						    }
						    
						  );
						HcontentVo.push(content);
			    }
			}else{
				alert('지정한여행기간보다 숙소의 개수가 많습니다');
			}
			}
			
			
			
			
	//맵모듈
	function handleEnterKey(event) {
		if (event.key === "Enter") {
			submitForm(); // 엔터 키를 눌렀을 때 submitForm 함수 호출
		}
	}

	// 폼 제출 함수
	function submitForm() {
		
		var inputValue = document.querySelector('input[type="text"]').value;
		$.ajax({
			type : 'get',
			dataType : 'json',
			url : 'search?addr=' + inputValue,
			cache : false,
			processData : true,
			success : function(res) {
				PlanModule.tour(res.x, res.y);
				x=res.x;
				y=res.y;
			},
			error : function(err) {
				alert('error: ' + err.status);
			}

		})

	}	
	function lodging(lat, len) {
		var ctype="32";

		$.ajax({
			type : 'get',
			dataType : 'json',
			url : 'tour?x=' + x + '&y=' + y + '&ctype=' +ctype,
			cache : false,
			processData : true,
			success : function(res) {
			displayLodgingInformation(res.contentList,x,y);
			},
			error : function(err) {
				alert('error: ' + err.status);
				
			}
		})
	}
	
	function addlist(){
	offset+=10;
	displayLodgingInformation(contentData,x,y);
	}
	function restaurant(){
		var cat="A05020100";
		$.ajax({
			type : 'get',
			dataType : 'json',
			url : 'tour?x=' + x + '&y=' + y + '&cat=' +cat,
			cache : false,
			processData : true,
			success : function(res) {
				
				PlanModule.displayTourInformation(res.contentList,x,y);

			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
	}
	function cafe(){
		var cat="A05020900";
		$.ajax({
			type :'get',
			dataType : 'json',
			url : 'tour?x=' + x + '&y=' + y + '&cat='+cat,
			cache : false,
			processData : true,
			success : function(res) {
				PlanModule.displayTourInformation(res.contentList,x,y);

			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
		
	}
	function attraction(){
		var ctype="12";
		$.ajax({
			type : 'get',
			dataType : 'json',
			url : 'tour?x=' + x + '&y=' + y+'&ctype='+ctype,
			cache : false,
			processData : true,
			success : function(res) {
				PlanModule.displayTourInformation(res.contentList,x,y);

			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})

	}
	
	// 모달 열기 함수
	function openModal(url) {
    	var modal = $('<div>').addClass('modal');
    	var modalContent = $('<div>').addClass('modal-content');
    	var closeBtn = $('<span>').addClass('close').html('&times;').click(function() {
        	modal.remove();
   		 });

    	var iframe = $('<iframe>').attr('src', url).attr('width', '100%').attr('height', '100%');

    	modalContent.append(closeBtn);
    	modalContent.append(iframe);
    	modal.append(modalContent);

    	$('body').append(modal);

    	// 모달 외부 클릭 시 닫기
    	modal.click(function(event) {
        	if (event.target === modal[0]) {
            	modal.remove();
        	}
    	});
	}


    return {
        myplan : myplan,
        memberplan : memberplan,
        saveP : saveP,
        tour : tour,
        displayTourInformation : displayTourInformation,
        removeDiv : removeDiv,
        displayLodgingInformation:displayLodgingInformation,
		lodging : lodging,
		restaurant : restaurant,
		cafe : cafe,
		attraction : attraction,
		openModal:openModal,
		copyPlaceDiv:copyPlaceDiv,
		copyHotelDiv:copyHotelDiv,
		removeDiv:removeDiv,
		addlist:addlist,
		Hselectend : Hselectend
    };
})();