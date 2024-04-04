<project xmlns="com.autoesl.autopilot.project" top="lenet_cnn" name="lenet_cnn_hls">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../lenet_cnn_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="lenet_cnn_hls/lenet_cnn.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lenet_cnn_hls/lenet_cnn.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

