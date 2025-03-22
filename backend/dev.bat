::这是在Windows上启动的脚本
@echo off

rem 设置默认端口值为 8080，如果已设置 PORT 环境变量，则使用该值
if not defined PORT (
    set PORT=8080
)

rem 启动 uvicorn 服务器
uvicorn open_webui.main:app --port %PORT% --host 0.0.0.0 --forwarded-allow-ips '*' --reload
