<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QueryNest - Pure Search Experience</title>
    <style>
        :root {
            --primary: #6C63FF;
            --secondary: #F8F9FA;
            --text: #2D3748;
            --light-text: #718096;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background-color: #FFFFFF;
            color: var(--text);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding-top: 5vh;
        }

        .container {
            width: 100%;
            max-width: 580px;
            padding: 2rem;
        }

        .logo {
            text-align: center;
            margin-bottom: 3rem;
            user-select: none;
        }

        .logo h1 {
            color: var(--primary);
            font-size: 2.75rem;
            font-weight: 800;
            letter-spacing: -0.05em;
            margin: 0;
        }

        .logo .tagline {
            color: var(--light-text);
            font-size: 1rem;
            margin-top: 0.5rem;
        }

        .search-form {
            display: flex;
            flex-direction: column;
            gap: 1.25rem;
        }

        .search-box {
            position: relative;
            width: 100%;
        }

        .search-input {
            width: 100%;
            padding: 1.1rem 1.5rem;
            padding-left: 3.25rem;
            border: 2px solid #E2E8F0;
            border-radius: 12px;
            font-size: 1.05rem;
            outline: none;
            transition: all 0.2s ease;
            background-color: var(--secondary);
        }

        .search-input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(108, 99, 255, 0.1);
        }

        .search-icon {
            position: absolute;
            left: 1.25rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--light-text);
            transition: color 0.2s;
        }

        .search-input:focus + .search-icon {
            color: var(--primary);
        }

        .button-group {
            display: flex;
            justify-content: center;
            gap: 0.75rem;
        }

        .btn {
            padding: 0.8rem 1.75rem;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.15s ease;
        }

        .btn-primary {
            background-color: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background-color: #5A52E0;
            transform: translateY(-1px);
        }

        .btn-secondary {
            background-color: transparent;
            color: var(--light-text);
            border: 1px solid #E2E8F0;
        }

        .btn-secondary:hover {
            background-color: #F8F9FA;
            border-color: #CBD5E0;
        }

        .footer {
            margin-top: 3rem;
            color: var(--light-text);
            font-size: 0.875rem;
            text-align: center;
        }

        @media (max-width: 640px) {
            .container {
                padding: 1.5rem;
            }

            .logo h1 {
                font-size: 2.25rem;
            }

            .search-input {
                padding: 1rem 1.25rem;
                padding-left: 2.75rem;
            }

            .search-icon {
                left: 1rem;
            }
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <div class="logo">
            <h1>QueryNest</h1>
            <div class="tagline">Find what matters, nothing more</div>
        </div>

        <form action="Search" class="search-form" method="GET">
            <div class="search-box">
                <i class="fas fa-search search-icon"></i>
                <input type="text" name="keyword" class="search-input" placeholder="Ask anything..." autocomplete="off" autofocus>
            </div>
            <div class="button-group">
                <button type="submit" class="btn btn-primary">
                    Search
                </button>
                <a href="History" class="btn btn-secondary">
                    History
                </a>
            </div>
        </form>

        <div class="footer">
            QueryNest &copy; 2025 • No distractions, just answers
        </div>
    </div>

    <script>
        // Simple animation for better UX
        document.querySelector('.search-input').addEventListener('focus', function() {
            this.parentElement.querySelector('.search-icon').style.color = 'var(--primary)';
        });

        document.querySelector('.search-input').addEventListener('blur', function() {
            this.parentElement.querySelector('.search-icon').style.color = 'var(--light-text)';
        });

        // Add slight delay to button hover effects for smoother feel
        const buttons = document.querySelectorAll('.btn');
        buttons.forEach(btn => {
            btn.style.transitionDelay = btn.classList.contains('btn-primary') ? '0s' : '0.05s';
        });
    </script>
</body>
</html>