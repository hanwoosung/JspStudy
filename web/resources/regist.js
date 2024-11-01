function reqList() {
    var param = {};
    param.orderNo = document.querySelector("input[name=orderNo]").value;
    param.shopNo = document.querySelector("select[name=shopNo]").value;
    param.orderDate = document.querySelector("input[name=orderDate]").value;
    param.pCode = document.querySelector("select[name=pCode]").value;
    param.amount = document.querySelector("input[name=amount]").value;

    axios.post('/order', param, {
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        }
    })
        .then((response) => {
            if (response.data.trim() === 'SUCCESS') {
                alert("주문 성공.");
                location.href = "orderList.jsp";
            } else {
                alert("주문실패");
            }
        })
        .catch((error) => {
            console.log(error);
            alert("주문실패");
        });
}


function validateForm() {
    const form = document.forms["registerForm"];
    const fields = ["orderNo", "shopNo", "orderDate", "pCode", "amount"];
    const fieldNames = {
        orderNo: "주문번호를 입력하세요",
        shopNo: "주문점포를 선택하세요",
        orderDate: "주문 일자를 입력하세요",
        pCode: "제품 코드를 입력하세요",
        amount: "주문수량을 입력하세요"
    };

    const orderNo = form["orderNo"].value;
    if (orderNo.length !== 8) {
        alert("주문번호는 8글자.");
        form["orderNo"].focus();
        return false;
    }

    const orderDate = form["orderDate"].value;
    if (!/^\d{8}$/.test(orderDate)) {
        alert("주문일자를 20001012 형식.");
        form["orderDate"].focus();
        return false;
    }

    for (let field of fields) {
        if (!form[field].value) {
            alert(fieldNames[field]);
            form[field].focus();
            return false;
        }
    }
    return true;
}
