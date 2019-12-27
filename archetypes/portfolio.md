---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true
---

{{< gallery dir="/galleries/{{ replace .Name "-" " " }}/" />}} {{< load-photoswipe >}}