function validateForm() {
    const form = document.forms["registerForm"];
    const fields = ["custno", "custname", "phone", "address", "joindate", "grade", "city"];
    for (let field of fields) {
        if (!form[field].value) {
            alert(form[field].placeholder + "을(를) 입력하세요.");
            form[field].focus();
            return false;
        }
    }
    const grade = form["grade"].value.toUpperCase();
    if (!["A", "B", "C"].includes(grade)) {
        alert("고객등급은 A, B, 또는 C만 가능합니다.");
        form["grade"].focus();
        return false;
    }
    return true;
}