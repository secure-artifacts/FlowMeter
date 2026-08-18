# FlowMeter v1.0.0

**Windows 便携式 VoiceMeeter 音频路由配置工具。** FlowMeter 通过“通道 1 / 通道 2 / 通道 3”帮助用户整理声音来源软件、接收声音软件、说话需求与监听设备，并生成逐项设置建议。它可同步部分 Windows 默认音频设备与 VoiceMeeter 可控路由；会议网页或会议客户端内部的设备选择仍需用户按提示手动完成。

## 功能

| 功能 | 说明 |
|---|---|
| 三个可选通道 | 通道 1 对应 Input，通道 2 对应 AUX，通道 3 对应 VAIO3（需要 VoiceMeeter Potato）。 |
| 路由建议 | 为选定的声音来源软件和接收声音软件分别给出麦克风、扬声器与回音风险提示。 |
| 说话关联 | 每个通道可选择“关闭说话”或“需要说话”，关联 VoiceMeeter 第 1 根音量柱的 B 路由。 |
| 自动配置 | 在用户确认后恢复 Windows 可控音频端点，并同步 FlowMeter 管理的 VoiceMeeter 路由。 |
| 配置存档 | 自动保存并恢复声音来源、接收软件、说话选择与监听设备。 |

## 系统要求

FlowMeter 适用于 **Windows 10 或 Windows 11 64 位**。**FlowMeter 解压即可使用；使用前请先安装并运行 VoiceMeeter Banana 或 Potato。FlowMeter 用于辅助配置，不替代 VoiceMeeter。** 通道 3 仅在 Potato 模式可用。

## 下载与运行

1. 在 [Releases](https://github.com/secure-artifacts/FlowMeter/releases) 下载最新的 `FlowMeter-v1.0.0-windows-portable.zip`。
2. 解压 ZIP 到任意本地文件夹，例如 `D:\FlowMeter`。
3. 双击 `Start-FlowMeter.bat`。
4. 先开启需要的通道，再选择声音来源软件、接收声音软件、说话需求和监听设备。
5. 阅读右侧设置建议，在对应的声音来源软件与会议软件内手动完成设备选择；需要时点击“自动配置”。

> **重要：** FlowMeter 不会也不能直接读取或控制 Google Meet、Teams 等网页或会议软件内部的设备状态。请在软件自身的音频设置中按 FlowMeter 的建议确认设备。

## 免安装包内容

```text
FlowMeter/
├─ FlowMeter.FirstVersion.ps1
├─ Start-FlowMeter.bat
├─ Modules/
│  ├─ AudioDeviceCmdlets.dll
│  └─ AudioDeviceCmdlets.sha256
└─ README.txt
```

`Start-FlowMeter.bat` 会使用 64 位 Windows PowerShell 启动主程序，并在启动失败时把诊断信息写入 `FlowMeter.startup-error.log`。

## 验证发布来源

正式 Release 由 GitHub Actions 自动构建、生成构件证明并上传。下载 ZIP 后，可使用 GitHub CLI 验证其来源：

```powershell
gh attestation verify .\FlowMeter-v1.0.0-windows-portable.zip --repo secure-artifacts/FlowMeter
```

该验证确认所下载的文件与 GitHub Actions 生成的构件证明相匹配。

## 安全与反馈

请勿把 Windows、VoiceMeeter 或会议软件中的敏感会议内容写入公开 Issue。使用问题、建议或错误报告请通过仓库的 Issues 提交，并仅提供复现所需的最小信息。

## 版本

当前正式版本：**v1.0.0**。
