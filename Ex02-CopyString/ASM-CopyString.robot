*** Settings ***
Resource          Renode-Common.robot

*** Variables ***
${MACHINE}        @platforms/cpus/stm32f103.repl
#${FIRMWARE}       @/home/app/Program_Ref/stm32f1-assembly/Ex02-CopyString/main.elf
${FIRMWARE}       @${CURDIR}/main.elf
${LENGTH_RUN}     50

*** Test Cases ***
Run CPU First
    [Setup]    Create Machine
    Start Simulation
    Run Steps    ${LENGTH_RUN}
    Pause Simulation
	Get All Register
    [Teardown]    Quit Machine