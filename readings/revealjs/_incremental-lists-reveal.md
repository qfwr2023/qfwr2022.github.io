## 增量列表

默认情况下，幻灯片中的编号列表 / 项目符号列表会一次性同时显示。你可以通过设定 `incremental` 选项来全局修改其默认行为。例如：

```{.yaml code-preview="/readings/revealjs/examples/incremental-lists-1.qmd"}
title: "演示文档"
format:
  revealjs:
    incremental: true   
```

你还可以通过直接指定包围在 div块（以 `:::` 标识） 中列表的显性类而使其成为增量或非增量列表。要使得列表成为增量列表，可执行以下设定：

```{.markdown code-preview="/readings/revealjs/examples/incremental-lists-2.qmd"}
::: {.incremental}
- 吃面
- 饮酒
:::
```

要使列表成为非增量列表，可执行以下设定：

```{.markdown code-preview="/readings/revealjs/examples/incremental-lists-3.qmd"}
::: {.nonincremental}
- 吃面
- 饮酒
:::
```
