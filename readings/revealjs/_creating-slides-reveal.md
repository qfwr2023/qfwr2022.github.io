## 创建幻灯片

在 markdown 中，幻灯片用标题来进行划分。例如，这是一个包含两张幻灯片的简单幻灯片文档（每张幻灯片都用2级标题 `##` 定义）：

``` {.markdown code-preview="/readings/revealjs/examples/creating-slides-1.qmd"}
---
title: "习惯"
author: "张三"
format: revealjs
---

## 早起

- 关闭闹钟
- 起床

## 晚睡

- 上床
- 数羊

```

您还可以使用 1级标题幻灯片（以`#`标识）将幻灯片划分为不同的节（section）。例如：


``` {.markdown code-preview="/readings/revealjs/examples/creating-slides-2.qmd"}
---
title: "习惯"
author: "张三"
format: revealjs
---

# 早晨

## 早起

- 关闭闹钟
- 起床

## 早餐

- 吃鸡蛋
- 喝咖啡

# 晚上

## 晚餐

- 吃面
- 饮酒

## 睡觉

- 上床
- 数羊

```

最后，你还可以使用水平线（`---`）来定义幻灯片（例如，你需要一张没有标题的幻灯片）：

``` {.markdown code-preview="/readings/revealjs/examples/creating-slides-3.qmd"}
---
title: "习惯"
author: "张三"
format: revealjs
---

- 关闭闹钟
- 起床

---

- 上床
- 数羊

```

上述示例均使用2级标题来定义幻灯片，并用1级标题来定义节和标题幻灯片。你可以利用选项进行自定义（详情请参阅Pandoc官方文档关于[构建幻灯片](https://pandoc.org/MANUAL.html#structuring-the-slide-show)的内容）。


### 标题幻灯片

你在上面的示例中应该已经注意到，Quarto 会基于文档 YAML 选项中提供的`title` 和 `author` 字段自动创建。有时你并不需要显性的标题幻灯片（例如第一张幻灯片完全由背景图构成），此时只需删除 `title` 和 `author` 选项，从而创建没有标题幻灯片的演示文稿：

``` markdown
---
format: revealjs
---

## 早起

- 关闭闹钟
- 起床

## 晚睡

- 上床
- 数羊

```
