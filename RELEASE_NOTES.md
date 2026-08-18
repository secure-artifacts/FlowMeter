# FlowMeter v1.0.0

这是 FlowMeter 的首个正式免安装发布版本，面向 Windows 上使用 VoiceMeeter Banana 或 Potato 进行会议音频路由的用户。

## 本版本包含

| 项目 | 说明 |
|---|---|
| 三个通道 | 通道 1（Input）、通道 2（AUX）和通道 3（VAIO3，需 Potato）。 |
| 说话与监听 | 可声明每个通道是否需要说话，并选择监听设备。 |
| 设置建议 | 分别提示声音来源软件与接收声音软件应设置的输入、输出和回音风险。 |
| 自动配置 | 在确认后恢复 Windows 可控音频端点，并同步 FlowMeter 管理的 VoiceMeeter 设置。 |
| 配置存档 | 自动保存并恢复用户的通道与软件选择。 |

## 下载与运行

下载 `FlowMeter-v1.0.0-windows-portable.zip`，解压后双击 `Start-FlowMeter.bat` 即可。FlowMeter 自身无需安装，但电脑必须已安装并运行 VoiceMeeter Banana 或 Potato。

## 发布来源验证

本 Release 的 ZIP 与 SHA256 校验文件均由 GitHub Actions 在同一 tag 构建中生成、证明并上传。下载 ZIP 后，可执行以下命令验证来源：

```powershell
gh attestation verify .\FlowMeter-v1.0.0-windows-portable.zip --repo secure-artifacts/FlowMeter
```
