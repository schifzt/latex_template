## Document
https://www.ctan.org/pkg/ieeetran

## 変換
+ align, alignat --> IEEEequnarry
+ {&, &&} --> IEEEequnarray{Rl+Rl+...+RL} 
    + N vs N
+ nonumber --> IEEEnonumber
+ biblatex --> bibtex
+ \figurename
```
\bibliographystyle{IEEEtran}
\bibliography{refs}
```
+ Put original.sty in the same directory with main.tex & \usepacakge{original}