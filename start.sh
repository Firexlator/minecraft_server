#!/bin/bash
echo 'Minecraft Server starting'
/usr/lib/jvm/temurin-17-jdk-arm64/bin/java -Xmx1200M -Xms1200M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -jar /home/esteban/mcserver/server.jar nogui || (echo -e '\e[91mMinecraft Server has crashed or could not start\e[0m'; sleep 10)
echo 'Minecraft Server has stopped'
sleep 3
