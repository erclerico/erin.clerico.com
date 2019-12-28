---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true
menu: "portfolio"
---

{{< gallery dir="/galleries/{{ replace .Name "-" " " }}/" />}} {{< load-photoswipe >}}