# 📦 apmcheck

**`apmcheck`** is a CLI tool that analyzes your source code and reports how many functions, endpoints or handlers are instrumented with APM (Application Performance Monitoring) — supporting **Datadog** and **OpenTelemetry**.

It helps you identify **tracing gaps** across services, ensure **observability coverage**, and enforce best practices across all teams and languages.

---

## 🎯 Use Cases

- ✅ Detect missing spans or trace decorators before production  
- ✅ Ensure APM coverage in new pull requests  
- ✅ Track APM adoption over time  
- ✅ Integrate into CI/CD pipelines (`--fail-under`)  
- ✅ Audit large monoliths or microservices for observability  

---

## 🚀 Features

- 🌍 Multivendor support: Datadog & OpenTelemetry  
- 🧠 Static code analysis (no runtime or instrumentation required)  
- 📊 Coverage report: traced vs untraced functions  
- 📂 Per-file and total breakdown  
- 🧪 CI/CD compatible with `--fail-under=X%`  
- 🔌 Extensible: Add custom rules, patterns, and APM SDKs  
- 💡 Multilanguage support (planned, see below)  

---

## 🔧 Installation

Clone the repository and install locally:

git clone https://github.com/your-org/apmcheck.git  
cd apmcheck  
pip install -e .

You can now use the CLI:

apmcheck --help

---

## 🌐 Supported Languages

All languages officially supported by **Datadog** and **OpenTelemetry** are planned.

| Language     | Datadog Supported | OpenTelemetry Supported | `apmcheck` Support |
|--------------|-------------------|------------------------|---------------------|
| Python       | ✅                | ✅                     | 🔜 Planned          |
| Node.js      | ✅                | ✅                     | 🔜 Planned          |
| Go           | ✅                | ✅                     | 🔜 Planned          |
| Java         | ✅                | ✅                     | 🔜 Planned          |
| Ruby         | ✅                | ✅                     | 🔜 Planned          |
| PHP          | ✅                | ✅                     | 🔜 Planned          |
| .NET (C#)    | ✅                | ✅                     | 🔜 Planned          |
| C++          | ✅ (partial)      | ✅                     | 🔜 Planned          |
| Rust         | ❌                | ✅                     | 🔜 Planned          |

*More languages may be supported via plugin-based detectors.*

---

## 🧪 Example Usage

Basic usage:

apmcheck ./src --language python --apm datadog

Sample output:

📦 Project: ./src  
🔍 Language: Python  
📈 APM Provider: Datadog

---------------------------------------------
| File           | Traced | Total | Coverage |
|----------------|--------|-------|----------|
| users.py       |   3    |   4   |  75.0%   |
| payments.py    |   5    |   5   | 100.0%   |
| orders.py      |   1    |   6   |  16.7%   |
---------------------------------------------
Overall coverage: 64.7%

CI mode with threshold:

apmcheck ./src --language go --apm opentelemetry --fail-under 80

---

## 🧠 How It Works

1. Parses code using language-specific ASTs  
2. Detects functions, endpoints, or handlers  
3. Matches known APM patterns (decorators, wrappers, spans, etc.)  
4. Reports coverage and optionally fails CI if threshold not met  

---

## 🛠️ Roadmap

- [ ] Add support for Java, Go, Node.js and Python  
- [ ] Dynamic mode (compare traced runtime vs statically detected functions)  
- [ ] GitHub/GitLab PR check integration  
- [ ] Visual dashboard of APM coverage per service

---

## 🤝 Contributing

Contributions, issues and feature requests are welcome!  
Feel free to check [issues page](https://github.com/your-org/apmcheck/issues).

---

## 📄 License

MIT License. See [LICENSE](LICENSE) for details.
