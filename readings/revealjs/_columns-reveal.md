## 多栏

要将展示内容放在并排的多栏中，你可以使用指定类为 `.columns` 的 div 容器，其中嵌套两个或多个带有 `.column` 类和 `width` 属性的 div 容器：

```{.markdown code-preview="/readings/revealjs/examples/columns.qmd"}
:::: {.columns}

::: {.column width="40%"}
左栏内容
:::

::: {.column width="60%"}
右栏内容
:::

::::
```
