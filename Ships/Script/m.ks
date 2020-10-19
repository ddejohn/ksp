parameter init is 0.
parameter breakpoint is 1000.

runpath("0:libraries/import.ks").
runoncepath("0:libraries/libs.ks").
local runmode is import(core:tag).

for i in range(init, min(breakpoint, runmode:length())) {
    clearscreen.
    for k in runmode:keys print k:padleft(17).
    print core:tag + "_RUNMODE > " at (0, i).
    runmode:values[i]().
    utilities:save(core:tag + "_" + utilities:el_pad(i, 3, "0") + "_" + runmode:keys[i]).
}