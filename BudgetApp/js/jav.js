<script>
    
function budgetter() {
    const array = [];
    const n = array.length;

    const mm = document.getElementById("dropmonth");


    let balance = 0;
    const monthly = document.getElementById("monthly");
    const btn = document.getElementById("submit");
    const data = document.getElementById("data");

    /*btn.addEventListener("click", function () {*/
        let expense = document.getElementById("exp").value;
        let budget = document.getElementById("budget").value;
        if (expense < budget) {
            balance = budget - expense;
        }
        else if (expense > budget) {
            balance = budget - expense;
        }
        else if (expense === budget) {
            balance = 0;
        }

        const expname = document.getElementById("expName").value;
        array[0] = expname;
        array[1] = expense;
        array[2] = budget;
        array[3] = balance;
        console.log(array);
        const totalline = document.getElementById("total");
        const week = document.createElement("div");

        week.id = "newdiv";
        week.classList.add("weekclass");
        week.innerHTML = `
	<span>${array[0]}</span>
	<span class="exptot">${array[1]}</span>
	<span class="budtot">${array[2]}</span>
	<span class="baltot">${array[3]}</span>
	
`;
        /*
        */


        if (expense !== "") {
            data.insertBefore(week, totalline);
        }
        document.getElementById("balance").textContent = array[3];
        //find total
        //show exp total

        const total = document.querySelectorAll(".exptot").textContent;
        const totalexp = [];




        const money = document.querySelectorAll(".exptot");

        money.forEach(function (mitem) {
            totalexp.push(parseFloat(mitem.textContent));
        });
        const theTotal = totalexp.reduce(function (totalexp, m) {
            totalexp += m;

            return totalexp;
        });

        const t1 = document.getElementById("expTotal");
        t1.textContent = theTotal;
        console.log(t1);
        //show budgetTotal
        const total1 = document.querySelectorAll(".budtot").textContent;
        const totalexp1 = [];
        const money1 = document.querySelectorAll(".budtot");

        money1.forEach(function (mitem) {
            totalexp1.push(parseFloat(mitem.textContent));
        });
        const btotal = totalexp1.reduce(function (totalexp1, m) {
            totalexp1 += m;

            return totalexp1;
        });
        const s1 = document.getElementById("budgetTotal");
        s1.textContent = btotal;
        //show balance total
        const total2 = document.querySelectorAll(".baltot").textContent;
        const totalexp2 = [];
        const money2 = document.querySelectorAll(".baltot");

        money2.forEach(function (mitem) {
            totalexp2.push(parseFloat(mitem.textContent));
        });
        const baltotal = totalexp2.reduce(function (totalexp2, m) {
            totalexp2 += m;

            return totalexp2;
});
const v1 = document.getElementById("balanceTotal");
v1.textContent = baltotal;
monthly.classList.add("show-cart");
/* });*/
}
</script>
function run() {
    //on selecting dropdownlist
    const e = document.getElementById("ddlmonth");
    e.addEventListener("change", function () {
        const m = document.getElementById("dropmonth");
        var selected = e.options[e.selectedIndex].text;
        m.textContent = selected;
        const bt1 = document.getElementById("submit");
        bt1.disabled = false;
        console.log(selected);
    });
}
function close() {
    const c = document.getElementById("close");
    c.addEventListener("click", function () {
        const m = document.getElementById("monthly");
        m.classList.remove("show-cart");
        document.getElementById("balance").textContent = "";
        document.getElementById("exp").value = "";
        document.getElementById("budget").value = "";
        document.getElementById("expName").value = "";


    });
}
function monthly() {
    //on submitting monthly data
    const msub = document.getElementById("msubmit");
    msub.addEventListener("click", function () {

        if (confirm("You cannot make any further changes.Do you want to continue?")) {
            alert("Select the next month to continue");
            //display data in cart
            let v = document.getElementById("dropmonth").textContent;
            let expensefinal = document.getElementById("expTotal").textContent;
            let budgetfinal = document.getElementById("budgetTotal").textContent;
            let balancefinal = document.getElementById("balanceTotal").textContent;
            console.log(expensefinal);
            const newweek = document.createElement("div");
            newweek.id = "analysis";
            newweek.classList.add("showdata");
            newweek.innerHTML = `
		<span class="monthname">${v}<span>
		<span class="monthname">${expensefinal}<span>
		<span class="monthname">${budgetfinal}<span>
		<span class="monthname">${balancefinal}<span>
		`;
            let r = document.getElementById("reportdata");
            let cl = document.getElementById("closedata");
            r.insertBefore(newweek, cl);
            array.length = 0;
            let t = document.getElementById("data");
            t.innerHTML = ``;
            const bt = document.getElementById("submit");
            bt.disabled = true;

            document.getElementById("dropmonth").textContent = "";
        }
    });
}
</script>