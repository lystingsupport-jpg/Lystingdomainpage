"""Give each release its own app URL so browsers cannot reuse older code."""
import hashlib
from pathlib import Path
root = Path(__file__).resolve().parents[1] / 'build' / 'web'
app = root / 'main.dart.js'
name = 'main.' + hashlib.sha256(app.read_bytes()).hexdigest()[:16] + '.dart.js'
(root / name).write_bytes(app.read_bytes())
bootstrap = root / 'flutter_bootstrap.js'
bootstrap.write_text(bootstrap.read_text().replace('"mainJsPath":"main.dart.js"', '"mainJsPath":"' + name + '"'))
bootstrap_name = 'flutter_bootstrap.' + hashlib.sha256(bootstrap.read_bytes()).hexdigest()[:16] + '.js'
(root / bootstrap_name).write_bytes(bootstrap.read_bytes())
index = root / 'index.html'
index.write_text(index.read_text().replace('src="flutter_bootstrap.js"', 'src="' + bootstrap_name + '"'))
