$(document).ready(function () {
    var quantitySelected = null
    var old_data = []
    var userId = []
    const cartItemData = {}
    $('#add_to_cart').click(function (e) {
        quantitySelected = e.target.value
    });
    $('#add-crt').click(function () {
        var url = window.location.href;
        var Pid = url.lastIndexOf('/') + 1;
        

        if (quantitySelected !== null) {
            const name = document.querySelector('[data-pname]');
            cartItemData["name"] = name.getAttribute('data-pname');
            const id = document.querySelector('[data-product_id]');
            cartItemData["id"] = id.getAttribute('data-product_id');
            const price = document.querySelector('[data-price]');
            cartItemData["price"] = price.getAttribute('data-price');
            const image = document.querySelector('[data-image]');
            cartItemData["image"] = image.getAttribute('data-image');
            cartItemData["quantity"] = quantitySelected
            cartItemData["userId"] = Pid
            localStorage.setItem('Pid', Pid)
            if(JSON.parse(localStorage.getItem('cartItemArray'))== null){
                old_data.push(cartItemData)
                localStorage.setItem('cartItemArray', JSON.stringify(old_data))
            }else{
                var data = JSON.parse(localStorage.getItem('cartItemArray'))
                data.push(cartItemData)
                localStorage.setItem('cartItemArray', JSON.stringify(data))
            }
        
        }


        console.log(JSON.parse(localStorage.getItem("cartItemArray")))

    });

    $('#cart_items').click(function () {
        if (localStorage.getItem("cartItemArray") !== null) {
            console.log("hiiti9ng", JSON.parse(localStorage.getItem("cartItemArray")))
            submitCartItems()
        }

    })

    function submitCartItems() {
        const cartItems = JSON.parse(localStorage.getItem("cartItemArray"))
        headers = {
            "Content-Type": "application/json",
            'X-CSRF-Token': getCookie(document.querySelector('[name=csrfmiddlewaretoken]').value),
        }
        axios.post("http://127.0.0.1:8000/apis/trackCartItems/", { "dd": cartItems }, headers)
        getRecommendation()
        getCartItems()
    }

    let getCookie = (name) => {
        var cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            var cookies = document.cookie.split(";");
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].trim();
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    async function getCartItems(){
        headers = {
            "Content-Type": "application/json",
            'X-CSRF-Token': getCookie(document.querySelector('[name=csrfmiddlewaretoken]').value),
        }
        const userId = localStorage.getItem('Pid')
        const res =  await axios.post("http://127.0.0.1:8000/apis/getCartItems/",{ "userId": userId }, headers)
 
     }

    async function getRecommendation(){
        headers = {
            "Content-Type": "application/json",
            'X-CSRF-Token': getCookie(document.querySelector('[name=csrfmiddlewaretoken]').value),
        }
       const res =  await axios.post("http://127.0.0.1:8000/apis/getPeopleAlsoBuyed/")

    }
    
})