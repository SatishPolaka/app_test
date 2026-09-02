from pathlib import Path
src = Path("/mnt/data/Pasted text(20260902-140525).txt")
text = src.read_text(encoding="utf-8")
# Fix malformed tags so the delivered upgraded file is functional.
text = text.replace("<emnput", "<input").replace("</emnput>", "</input>")
text = text.replace("<emmg", "<img").replace("</emmg>", "</img>")

# Premium override stylesheet injected before </style>
premium_css = r'''
        /* =========================================================
           PREMIUM REDESIGN — NexusShop
           ========================================================= */
        :root {
            --bg: #f5f7fb;
            --primary: #101828;
            --accent: #7c3aed;
            --accent-2: #a855f7;
            --gold: #f59e0b;
            --muted: #667085;
            --card: #ffffff;
            --surface: #eef2f8;
            --success: #16a34a;
            --radius: 18px;
            --container: 1240px;
        }

        html { scroll-behavior: smooth; }

        body {
            background:
                radial-gradient(circle at 5% 0%, rgba(124,58,237,.08), transparent 28%),
                radial-gradient(circle at 95% 20%, rgba(168,85,247,.06), transparent 25%),
                var(--bg);
            color: var(--primary);
            line-height: 1.6;
        }

        header {
            background: rgba(255,255,255,.82);
            border-bottom: 1px solid rgba(16,24,40,.06);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            box-shadow: 0 8px 30px rgba(16,24,40,.04);
        }

        .header-inner { padding: 16px 0; }

        .brand {
            font-size: 22px;
            letter-spacing: -.7px;
        }

        .brand .accent {
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        nav.main-nav li a {
            padding: 10px 13px;
            border-radius: 12px;
            transition: .25s ease;
        }

        nav.main-nav li a:hover {
            background: rgba(124,58,237,.08);
            color: var(--accent);
        }

        .search {
            background: rgba(246,247,251,.9);
            border: 1px solid rgba(16,24,40,.07);
            box-shadow: inset 0 1px 0 rgba(255,255,255,.8);
            min-width: 260px;
            transition: .25s ease;
        }

        .search:focus-within {
            border-color: rgba(124,58,237,.4);
            box-shadow: 0 0 0 4px rgba(124,58,237,.09);
            background: #fff;
        }

        .icon-btn, .cart {
            transition: .25s ease;
        }

        .icon-btn:hover, .cart:hover {
            color: var(--accent);
            transform: translateY(-1px);
        }

        .cart-count {
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            box-shadow: 0 5px 12px rgba(124,58,237,.28);
        }

        .hero {
            min-height: 580px;
            margin: 18px auto 0;
            width: min(1280px, calc(100% - 32px));
            border-radius: 28px;
            position: relative;
            overflow: hidden;
            background:
                linear-gradient(100deg, rgba(10,15,30,.88), rgba(10,15,30,.52)),
                url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90') center/cover no-repeat;
            box-shadow: 0 25px 70px rgba(16,24,40,.18);
        }

        .hero::after {
            content: "";
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 75% 30%, rgba(124,58,237,.28), transparent 30%);
            pointer-events: none;
        }

        .hero .container {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            max-width: 820px;
            margin-inline: auto;
            font-size: clamp(42px, 6vw, 76px);
            line-height: 1.08;
            letter-spacing: -2.5px;
        }

        .hero p {
            font-size: 17px;
            line-height: 1.75;
            max-width: 680px;
            margin-inline: auto;
        }

        .btn {
            padding: 13px 23px;
            border-radius: 999px;
            transition: transform .25s ease, box-shadow .25s ease, background .25s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
            color: #fff;
            box-shadow: 0 12px 28px rgba(124,58,237,.28);
        }

        .btn-primary:hover {
            box-shadow: 0 18px 35px rgba(124,58,237,.38);
        }

        .btn-ghost {
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.35);
            backdrop-filter: blur(10px);
        }

        .section { padding: 76px 0; }

        .section .title { margin-bottom: 34px; }

        .section .title h2,
        .section-title {
            font-family: Poppins, sans-serif;
            font-size: clamp(28px, 3vw, 38px);
            letter-spacing: -1px;
            margin-bottom: 8px;
        }

        .categories { gap: 18px; }

        .cat-card {
            position: relative;
            overflow: hidden;
            border: 1px solid rgba(16,24,40,.06);
            border-radius: 20px;
            padding: 26px 18px;
            box-shadow: 0 12px 30px rgba(16,24,40,.05);
            cursor: pointer;
            transition: transform .28s ease, box-shadow .28s ease, border-color .28s ease;
        }

        .cat-card::before {
            content: "";
            position: absolute;
            width: 120px;
            height: 120px;
            border-radius: 50%;
            background: rgba(124,58,237,.07);
            top: -55px;
            right: -45px;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: rgba(124,58,237,.18);
            box-shadow: 0 24px 50px rgba(16,24,40,.10);
        }

        .cat-card .icon {
            width: 58px;
            height: 58px;
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            border-radius: 16px;
            background: linear-gradient(135deg, rgba(124,58,237,.12), rgba(168,85,247,.18));
            color: var(--accent);
        }

        .products { gap: 22px; }

        .product {
            position: relative;
            border: 1px solid rgba(16,24,40,.06);
            border-radius: 20px;
            box-shadow: 0 12px 32px rgba(16,24,40,.055);
            transition: transform .3s ease, box-shadow .3s ease;
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 55px rgba(16,24,40,.13);
        }

        .product img {
            height: 235px;
            transition: transform .45s ease;
        }

        .product:hover img { transform: scale(1.05); }

        .product-body { padding: 18px; gap: 12px; }

        .product h5 { font-size: 16px; }

        .product-footer {
            padding: 0 18px 18px;
        }

        .add-btn {
            background: var(--primary);
            border-radius: 12px;
            transition: .25s ease;
        }

        .add-btn:hover {
            background: linear-gradient(135deg, var(--accent), var(--accent-2));
        }

        .wish-btn {
            border-radius: 12px;
            transition: .25s ease;
        }

        .wish-btn:hover {
            color: var(--accent);
            border-color: rgba(124,58,237,.25);
            background: rgba(124,58,237,.06);
        }

        .deal {
            border-radius: 26px;
            background: linear-gradient(135deg, #111827, #24104a);
            color: white;
            box-shadow: 0 25px 60px rgba(16,24,40,.18);
        }

        .deal .content { padding: 44px; }

        .deal .content h3 {
            font-family: Poppins;
            font-size: 34px;
            margin-top: 0;
        }

        .deal .muted { color: rgba(255,255,255,.68); }

        .deal .price { color: white; }

        .time-box {
            background: rgba(255,255,255,.10);
            border: 1px solid rgba(255,255,255,.12);
            backdrop-filter: blur(10px);
            border-radius: 14px;
        }

        .testimonial {
            border: 1px solid rgba(16,24,40,.06);
            border-radius: 20px;
            box-shadow: 0 12px 30px rgba(16,24,40,.05);
        }

        .newsletter {
            position: relative;
            overflow: hidden;
            border-radius: 26px;
            padding: 48px 32px;
            background: linear-gradient(135deg, #111827, #5b21b6);
            box-shadow: 0 22px 55px rgba(91,33,182,.22);
        }

        .newsletter::before {
            content: "";
            position: absolute;
            width: 320px;
            height: 320px;
            border-radius: 50%;
            background: rgba(255,255,255,.07);
            top: -180px;
            left: -100px;
        }

        .newsletter > * { position: relative; z-index: 1; }

        .newsletter input {
            box-shadow: 0 8px 25px rgba(0,0,0,.12);
        }

        footer {
            background: #fff;
            margin-top: 48px;
        }

        @media (max-width: 900px) {
            .hero {
                min-height: 500px;
                width: calc(100% - 24px);
                margin-top: 12px;
            }
            .deal .content { padding: 28px; }
        }

        @media (max-width: 600px) {
            .hero {
                min-height: 500px;
                border-radius: 20px;
            }
            .hero h1 { letter-spacing: -1.2px; }
            .search { display: none; }
            .section { padding: 55px 0; }
            .deal .content { padding: 24px; }
            .timer { gap: 7px; }
            .time-box { min-width: 58px; padding: 10px 8px; }
        }
'''
text = text.replace("</style>", premium_css + "\n    </style>", 1)

out = Path("/mnt/data/NexusShop_Premium.html")
out.write_text(text, encoding="utf-8")
print(f"Created premium version: {out.name}")
