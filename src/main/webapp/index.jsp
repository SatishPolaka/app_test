from pathlib import Path

html = r'''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop | Premium Store</title>
<style>
:root{
  --bg:#f6f7fb;--surface:#fff;--dark:#111827;--text:#1f2937;
  --muted:#6b7280;--purple:#7c3aed;--purple2:#a855f7;
  --border:#e8eaf0;--radius:22px
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;font-family:Arial,Helvetica,sans-serif;background:var(--bg);color:var(--text)}
button,input{font:inherit}
button{cursor:pointer}
.container{width:min(1200px,calc(100% - 32px));margin:auto}

/* HEADER */
header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.92);backdrop-filter:blur(15px);border-bottom:1px solid var(--border)}
.header{min-height:76px;display:flex;align-items:center;justify-content:space-between;gap:24px}
.logo{font-size:24px;font-weight:800;text-decoration:none;color:var(--dark)}
.logo span{color:var(--purple)}
nav{display:flex;gap:24px}
nav a{text-decoration:none;color:#4b5563;font-weight:600}
nav a:hover{color:var(--purple)}
.actions{display:flex;align-items:center;gap:12px}
.search{display:flex;align-items:center;background:#f3f4f6;border:1px solid transparent;border-radius:14px;padding:0 12px}
.search:focus-within{border-color:var(--purple);background:white}
.search input{width:210px;border:0;outline:0;background:transparent;padding:12px 6px}
.icon{border:1px solid var(--border);background:white;border-radius:12px;padding:10px 13px;font-size:16px}
.cart{position:relative}
.count{position:absolute;right:-7px;top:-7px;background:var(--purple);color:white;width:20px;height:20px;border-radius:50%;font-size:11px;display:grid;place-items:center}

/* HERO */
.hero{min-height:560px;margin:22px auto 0;width:min(1280px,calc(100% - 32px));border-radius:30px;overflow:hidden;display:grid;place-items:center;text-align:center;color:white;position:relative;background:linear-gradient(100deg,rgba(12,15,30,.92),rgba(44,18,82,.58)),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85') center/cover}
.hero-content{position:relative;z-index:1;max-width:800px;padding:40px 20px}
.badge{display:inline-block;background:rgba(255,255,255,.14);border:1px solid rgba(255,255,255,.22);padding:8px 14px;border-radius:999px;font-size:13px;margin-bottom:20px}
.hero h1{font-size:clamp(42px,7vw,76px);line-height:1.05;letter-spacing:-2px;margin:0 0 20px}
.hero p{font-size:17px;line-height:1.7;color:#e5e7eb;max-width:650px;margin:0 auto 30px}
.btn{border:0;border-radius:999px;padding:14px 23px;font-weight:700;margin:5px;transition:.2s}
.primary{background:linear-gradient(135deg,var(--purple),var(--purple2));color:white;box-shadow:0 14px 30px rgba(124,58,237,.35)}
.secondary{background:rgba(255,255,255,.12);color:white;border:1px solid rgba(255,255,255,.3)}
.btn:hover{transform:translateY(-2px)}

/* SECTIONS */
section{padding:72px 0}
.title{text-align:center;margin-bottom:32px}
.title h2{font-size:34px;margin:0 0 8px;color:var(--dark)}
.title p{color:var(--muted);margin:0}
.grid{display:grid;gap:20px}
.categories{grid-template-columns:repeat(6,1fr)}
.category{background:white;border:1px solid var(--border);border-radius:20px;padding:24px 12px;text-align:center;transition:.25s;cursor:pointer}
.category:hover{transform:translateY(-7px);box-shadow:0 18px 40px rgba(17,24,39,.1);border-color:#d8c7ff}
.category .emoji{width:56px;height:56px;margin:auto auto 12px;display:grid;place-items:center;background:#f3edff;border-radius:16px;font-size:25px}
.category h3{font-size:15px;margin:0}

.products{grid-template-columns:repeat(4,1fr)}
.product{background:white;border:1px solid var(--border);border-radius:20px;overflow:hidden;transition:.25s}
.product:hover{transform:translateY(-7px);box-shadow:0 20px 45px rgba(17,24,39,.12)}
.product-image{height:230px;overflow:hidden;background:#eee}
.product-image img{width:100%;height:100%;object-fit:cover;display:block;transition:.4s}
.product:hover img{transform:scale(1.06)}
.product-info{padding:18px}
.category-name{font-size:12px;color:var(--purple);font-weight:700;text-transform:uppercase}
.product h3{font-size:17px;margin:7px 0}
.rating{color:#f59e0b;font-size:14px}
.price-row{display:flex;justify-content:space-between;align-items:center;margin-top:13px}
.price{font-size:19px;font-weight:800;color:var(--dark)}
.old{font-size:13px;color:#9ca3af;text-decoration:line-through}
.add{width:100%;margin-top:16px;padding:12px;border:0;border-radius:12px;background:var(--dark);color:white;font-weight:700}
.add:hover{background:var(--purple)}

/* DEAL */
.deal{background:linear-gradient(135deg,#111827,#321264);border-radius:28px;overflow:hidden;color:white;display:grid;grid-template-columns:1fr 1fr;box-shadow:0 24px 60px rgba(17,24,39,.18)}
.deal img{width:100%;height:100%;min-height:400px;object-fit:cover}
.deal-content{padding:55px 45px}
.deal-content h2{font-size:38px;margin:10px 0}
.deal-content p{color:#d1d5db}
.timer{display:flex;gap:10px;margin:25px 0}
.time{min-width:70px;padding:12px 8px;text-align:center;border-radius:13px;background:rgba(255,255,255,.1);border:1px solid rgba(255,255,255,.13)}
.time strong{font-size:22px;display:block}
.time span{font-size:11px;color:#d1d5db}

/* NEWSLETTER */
.newsletter{background:linear-gradient(135deg,#111827,#6d28d9);border-radius:26px;color:white;padding:50px 25px;text-align:center}
.newsletter h2{font-size:32px;margin:0 0 10px}
.newsletter p{color:#ddd6fe}
.subscribe{display:flex;justify-content:center;gap:10px;max-width:520px;margin:24px auto 0}
.subscribe input{flex:1;border:0;border-radius:999px;padding:14px 18px;outline:none}
.subscribe button{border:0;border-radius:999px;padding:14px 22px;background:white;color:#5b21b6;font-weight:800}

/* FOOTER */
footer{background:white;border-top:1px solid var(--border);padding:35px 0;color:var(--muted);text-align:center}
.empty{grid-column:1/-1;text-align:center;color:var(--muted);padding:40px}

@media(max-width:950px){
  nav{display:none}.categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(2,1fr)}
  .deal{grid-template-columns:1fr}.deal img{height:300px}.search input{width:140px}
}
@media(max-width:600px){
  .container{width:min(100% - 24px,1200px)}.hero{width:calc(100% - 20px);min-height:500px;border-radius:22px}
  .hero h1{letter-spacing:-1px}.search{display:none}.categories{grid-template-columns:repeat(2,1fr)}
  .products{grid-template-columns:1fr}.deal-content{padding:35px 25px}.timer{flex-wrap:wrap}
  .subscribe{flex-direction:column}.subscribe input,.subscribe button{width:100%}
}
</style>
</head>
<body>

<header>
  <div class="container header">
    <a class="logo" href="#">Nexus<span>Shop</span></a>
    <nav>
      <a href="#">Home</a><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Deals</a>
    </nav>
    <div class="actions">
      <div class="search"><span>⌕</span><input id="searchInput" placeholder="Search products..."></div>
      <button class="icon cart" id="cartButton">🛒<span class="count" id="cartCount">0</span></button>
    </div>
  </div>
</header>

<main>
<section class="hero">
  <div class="hero-content">
    <div class="badge">✦ PREMIUM COLLECTION 2026</div>
    <h1>Elevate Your Everyday Style.</h1>
    <p>Discover carefully selected technology, fashion and lifestyle products designed for a better shopping experience.</p>
    <button class="btn primary" onclick="document.getElementById('products').scrollIntoView()">Shop Collection</button>
    <button class="btn secondary" onclick="document.getElementById('deals').scrollIntoView()">Explore Deals</button>
  </div>
</section>

<section id="categories">
<div class="container">
  <div class="title"><h2>Shop by Category</h2><p>Find exactly what you're looking for.</p></div>
  <div class="grid categories" id="categoryGrid"></div>
</div>
</section>

<section id="products">
<div class="container">
  <div class="title"><h2>Trending Products</h2><p>Premium picks chosen for you.</p></div>
  <div class="grid products" id="productGrid"></div>
</div>
</section>

<section id="deals">
<div class="container">
  <div class="deal">
    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="Laptop deal">
    <div class="deal-content">
      <div class="badge">LIMITED TIME OFFER</div>
      <h2>Premium Tech Sale</h2>
      <p>Experience powerful performance with our exclusive technology collection.</p>
      <div class="timer">
        <div class="time"><strong id="hours">24</strong><span>HOURS</span></div>
        <div class="time"><strong id="minutes">00</strong><span>MINUTES</span></div>
        <div class="time"><strong id="seconds">00</strong><span>SECONDS</span></div>
      </div>
      <div style="font-size:28px;font-weight:800">$999 <span class="old">$1,199</span></div>
      <button class="btn primary" id="dealButton" style="margin:22px 0 0">Add Deal to Cart</button>
    </div>
  </div>
</div>
</section>

<section>
<div class="container newsletter">
  <h2>Stay in the Loop</h2>
  <p>Get exclusive offers and new arrivals directly in your inbox.</p>
  <form class="subscribe" id="newsletterForm">
    <input id="email" type="email" placeholder="Enter your email address" required>
    <button type="submit">Subscribe</button>
  </form>
  <p id="message" style="display:none"></p>
</div>
</section>
</main>

<footer>© <span id="year"></span> NexusShop. Premium shopping experience.</footer>

<script>
const products = [
 {id:1,title:"iPhone 14 Pro Max",category:"Smartphones",price:1099,old:1199,rating:5,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80"},
 {id:2,title:"MacBook Pro 14",category:"Laptops",price:1999,old:null,rating:5,img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=80"},
 {id:3,title:"Apple Watch",category:"Accessories",price:349,old:399,rating:5,img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=80"},
 {id:4,title:"Nike Air Max",category:"Footwear",price:150,old:null,rating:4,img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"},
 {id:5,title:"Sony A7 Camera",category:"Gadgets",price:2499,old:null,rating:5,img:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80"},
 {id:6,title:"Premium Backpack",category:"Accessories",price:79,old:99,rating:4,img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"},
 {id:7,title:"Wireless Headphones",category:"Gadgets",price:399,old:null,rating:5,img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"},
 {id:8,title:"Classic Jacket",category:"Clothing",price:129,old:159,rating:4,img:"https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=700&q=80"}
];

const categories = [
 ["📱","Smartphones"],["💻","Laptops"],["👕","Clothing"],
 ["🎧","Gadgets"],["👟","Footwear"],["⌚","Accessories"]
];

let cartCount = 0;
const productGrid = document.getElementById("productGrid");

function renderCategories(){
 document.getElementById("categoryGrid").innerHTML = categories.map(([emoji,name]) =>
  `<div class="category" onclick="filterByCategory('${name}')"><div class="emoji">${emoji}</div><h3>${name}</h3></div>`
 ).join("");
}

function renderProducts(list){
 if(!list.length){
   productGrid.innerHTML='<div class="empty">No products found.</div>';
   return;
 }
 productGrid.innerHTML=list.map(p=>`
  <article class="product">
   <div class="product-image"><img src="${p.img}" alt="${p.title}"></div>
   <div class="product-info">
    <div class="category-name">${p.category}</div>
    <h3>${p.title}</h3>
    <div class="rating">${"★".repeat(p.rating)}${"☆".repeat(5-p.rating)}</div>
    <div class="price-row"><div><div class="price">$${p.price.toLocaleString()}</div>${p.old?`<span class="old">$${p.old.toLocaleString()}</span>`:""}</div></div>
    <button class="add" onclick="addToCart()">Add to Cart</button>
   </div>
  </article>`).join("");
}

function filterByCategory(category){
 const result=products.filter(p=>p.category===category);
 renderProducts(result);
 document.getElementById("products").scrollIntoView({behavior:"smooth"});
}

function addToCart(){
 cartCount++;
 document.getElementById("cartCount").textContent=cartCount;
}

document.getElementById("searchInput").addEventListener("input",function(){
 const q=this.value.trim().toLowerCase();
 renderProducts(products.filter(p=>p.title.toLowerCase().includes(q)||p.category.toLowerCase().includes(q)));
});

document.getElementById("dealButton").addEventListener("click",addToCart);

document.getElementById("newsletterForm").addEventListener("submit",function(e){
 e.preventDefault();
 const msg=document.getElementById("message");
 msg.style.display="block";
 msg.textContent="Thanks! You are successfully subscribed.";
 this.reset();
});

const end=Date.now()+24*60*60*1000;
setInterval(()=>{
 let diff=Math.max(0,end-Date.now());
 const h=Math.floor(diff/3600000);
 const m=Math.floor(diff%3600000/60000);
 const s=Math.floor(diff%60000/1000);
 document.getElementById("hours").textContent=String(h).padStart(2,"0");
 document.getElementById("minutes").textContent=String(m).padStart(2,"0");
 document.getElementById("seconds").textContent=String(s).padStart(2,"0");
},1000);

document.getElementById("year").textContent=new Date().getFullYear();
renderCategories();
renderProducts(products);
</script>
</body>
</html>'''

out = Path("/mnt/data/NexusShop_Premium_Working.html")
out.write_text(html, encoding="utf-8")
print(f"Created fully rebuilt working website: {out}")
