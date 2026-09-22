---
title: Theme Demo
date: 2020-05-25
draft: true
description: A reference post exercising the HugoTeX theme features (math, theorems, figures, HTML elements).
---

This site is built with Hugo and the HugoTeX theme. It gives markdown posts the typography of <span class="latex">L<span>a</span>T<span>e</span>X</span> and renders equations with KaTeX at build time, like this one:
$$ J(\theta) =\frac{1}{2m}
[\sum^m_{i=1}(h_\theta(x^{(i)}) -
y^{(i)})^2 + \lambda\sum^n_{j=1}\theta^2_j $$

<!--more-->

Everything above Hugo's summary divider (an HTML comment containing the word `more`) becomes the post's abstract, shown on the post page and in the home page listing.

# Theorems and Proofs

{{< theorem >}}
The real numbers $\mathbb{R}$ are uncountable.
{{< /theorem >}}

{{< proof >}}
If $\mathbb{R}$ is countable, then $[0, 1]$ is countable as well. Hence there exists a map
$C$ from $\mathbb{N}$ onto $[0, 1]$ with $$C(n)=\sum_{i=1}^{\infty} c_{i}(n) 10^{-i}$$ where $c_{i}(n) \in\{0,1,\ldots, 9\}$
are the digits in decimal expansion. Now consider a real number
$$x=\sum_{i=1}^{\infty} \bar{c}_{i} 10^{-i} \in[0,1]$$
with $\bar{c}_{i} \neq c_{i}(i)$. Obviously $C(n) \neq x$ for all $n \in \mathbb{N}$. Hence $C$ is not onto. A contradiction.
{{< /proof >}}

```markdown
{{</* theorem */>}}
The real numbers $\mathbb{R}$ are uncountable.
{{</* /theorem */>}}

{{</* proof */>}}
If $\mathbb{R}$ is countable ...
{{</* /proof */>}}
```

# Sidenotes

HugoTeX ships a sidenote shortcode.{{% sidenote %}}This text appears in the right margin on wide screens.{{% /sidenote %}}

# HTML Elements

## Text Formatting

This sentence is **bold**. This sentence is *italic*. <small>Small</small> text is for fine print. Your copy can also be <sub>subscripted</sub> and <sup>superscripted</sup>, <ins>inserted</ins>, ~~deleted~~, or <mark>highlighted</mark>. You would use a [hyperlink](https://github.com/kaisugi/HugoTeX) to go to a new page. Keyboard input elements like <kbd>Cmd + Shift</kbd> are used to display textual user input.

## Definition Lists

First Term
: This is the definition of the first term.

Triple Integral
: $\iiint_V \mu(u,v,w) \,du\,dv\,dw$

## Blockquotes

> Give me six hours to chop down a tree and I will spend the first four sharpening the axe.
<cite>— Abraham Lincoln</cite>

## Tables

|Header 1|Header 2|Header 3|
|--- |--- |--- |
|Description 1|Description 2|Description 3|
|Description 1|Description 2|Description 3|

## Images

{{< figure src="/latex_image_example.jpeg" caption="Mountain landscape by John Towner." >}}

## Code

```go
func main() {
	fmt.Println("Hello world")
}
```

## Lists

- List Item 1
- List Item 2

1. List Item 1
1. List Item 2
