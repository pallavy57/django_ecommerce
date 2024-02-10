$(document).ready(function () {
    // Prevent the form to be submitted on ENTER
    $('#registration_form').submit(function (e) {
        e.preventDefault();

    });

    // Controll data
    $('#b1').click(function () {
        console.log("hiiti9ng")
        submitData();
    });

    // Check mandatory fields before subitting:
    function submitData(e) {
        console.log("hiiti9ng")
        const input = {
            email: $("#inputEmail4").val(),
            password: $("#inputPassword4").val(),
            phone: $("#inputPhone").val(),
            address: $("#inputAddress2").val(),
            state: $("#inputState").val(),
            city: $("#inputCity").val(),
            zipcode: $("#inputZip").val()

        }
        const formData = new FormData();
        //console.log(name);
        formData.append('email', input.email);
        formData.append('password', input.password);
        formData.append('phone', input.phone);
        formData.append('address', input.address);
        formData.append('state', input.state);
        formData.append('city', input.city);
        formData.append('zipcode', input.zipcode);
        formData.append('csrftoken', document.querySelector('[name=csrfmiddlewaretoken]').value);

        console.log(formData)
        fetch("http://127.0.0.1:8000/apis/registeruser/", {
            method: 'POST', // or 'PUT'
            body: formData,
            headers: {
                'X-CSRFToken': document.querySelector('[name=csrfmiddlewaretoken]').value,

            }
        }).then(res => res.json())
            .then(data => {
                console.log('Success:', data.resp);
                document.getElementById("inputEmail4").value = "";
                document.getElementById("inputPassword4").value = "";
                document.getElementById("inputPhone").value = "";
                document.getElementById("inputAddress2").value = "";
                document.getElementById("inputPassword4").value = "";
                document.getElementById("inputCity").value = "";
                document.getElementById("inputZip").value = "";
                document.getElementById("t1").innerText = data.resp
                setTimeout(function () {
                    document.getElementById("t1").style.display = "none";
                }, 3000);
                setTimeout(function () {
                    document.getElementById("t1").style.display = "";
                }, 1000);
            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById("t1").innerText = "Sorry! There was an error submitting your enquiry. "
                setTimeout(function () {
                    document.getElementById("t1").style.display = "none";
                }, 3000);
                setTimeout(function () {
                    document.getElementById("t1").style.display = "";
                }, 1000);





            })
    }
    $('#login_form').submit(function (e) {
        e.preventDefault();

    });

    // Controll data
    $('#b2').click(function () {
        console.log("hiiti9ng")
        loginData();
       
    });
    function redirect(data) {
       
        window.location = 'http://127.0.0.1:8000/wiserly/products/'
    }
    function loginData(e) {
        console.log("hiiti9ng")
        const input = {
            email: $("#inputEmail6").val(),
            password: $("#inputPassword6").val(),
        }
        const formData = new FormData();
        //console.log(name);
        formData.append('email', input.email);
        formData.append('password', input.password);
        formData.append('csrftoken', document.querySelector('[name=csrfmiddlewaretoken]').value);

        console.log(formData)
        fetch("http://127.0.0.1:8000/apis/loginUser/", {
            method: 'POST', // or 'PUT'
            body: formData,
            headers: {
                'X-CSRFToken': document.querySelector('[name=csrfmiddlewaretoken]').value,

            }
        }).then(res => res.json())
            .then(data => {
               
                document.getElementById("inputEmail6").value = "";
                document.getElementById("inputPassword6").value = "";
             
            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById("t2").innerText = "Sorry! There was an error submitting your enquiry. "
                setTimeout(function () {
                    document.getElementById("t2").style.display = "none";
                }, 3000);
                setTimeout(function () {
                    document.getElementById("t2").style.display = "";
                }, 1000);





            })
    }

    var right = 0;
    var maxMargin;
    var jumpMargin = 150;
    
    function setWidth(){
      var boxwidth = document.querySelector(".container_01").offsetWidth;
      var displaywidth = document.querySelector(".row_01").offsetWidth;
      var children = document.querySelectorAll(".row-container > .container_01").length;
      var outerboxwidth = children * boxwidth + (children*5);
      maxMargin = outerboxwidth - displaywidth;
      console.log(maxMargin)
    }

    $('#clickleft').click(function (e) {
        
        slideLeft(e)
       
    });
    
    function slideLeft(event){
      var rowcont = document.querySelector(".row-container");
      if(right <= -maxMargin){
        event.preventDefault();
      }
      else{
        right -= jumpMargin;
      }

      console.log(right <= -maxMargin, right, jumpMargin,rowcont)
       rowcont.style.marginLeft = right+"px";
    }

    $('#clickright').click(function (e) {
        slideRight(e)
       
    });
    
    function slideRight(event){
      var rowcont = document.querySelector(".row-container");
      if(right==0){
        event.preventDefault();
      }
      else if(right >= maxMargin){
        event.preventDefault();
      }
      else{
         right += jumpMargin;
      }
      console.log(right, jumpMargin,rowcont)
      rowcont.style.marginLeft = right+"px";
    }
    
    window.onload=setWidth;

})