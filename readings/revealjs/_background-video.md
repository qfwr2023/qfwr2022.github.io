
| **属性**                 | **默认值** | **说明**                             |
|:-------------------------|:-----------|:-------------------------------------
| `background-video`       |        | 单个视频源或以逗号分隔的视频源列表       |
| `background-video-loop`  | false  | 标识是否重复播放视频                     |
| `background-video-muted` | false  | 标识是否静音播放视频                     |
| `background-size`        | cover  | `cover`：等比缩放填充（必要时剪裁），`contain`：缩放填充（必要时填补背景色）   |
| `background-opacity`     | 1      | 不透明度（0-1级，0为透明，1为完全不透明）|

示例如下：

``` markdown
## 幻灯片标题 {background-video="video.mp4" background-video-loop="true" background-video-muted="true"}

这个幻灯片的背景视频将会循环静音播放。
```
