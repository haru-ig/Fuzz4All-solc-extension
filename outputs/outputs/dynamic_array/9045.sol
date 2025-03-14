pragma solidity ^0.8.0;
contract Semantic solidityArrayAbiConversionTestsA {
    function test (uint[][2] memory bar, uint offset) public {
        uint mem_offset = 0;
        uint[] memory newArray = bar;
        for (uint i = 0; i < bar.length; i++) {
            newArray[0] = offset;
            offset = offset + 1;
            bar[i] = newArray;
            offset = offset + 1;
        }
        uint[bar.length][3] barTemp = [offset, offset + 1, offset + 2];
        bar.length = 2;
    }

    function test2 (uint[][] memory bar, uint[][] memory bar_mut_offset, uint offset, uint mut_offset) public pure {
        uint[] memory barTemp = bar;
        for (uint i = 0; i < barTemp.length; i++) {
            barTemp[i][1] = offset;
            offset = offset + 1;
        }
        for (uint i = 0; i < barTemp.length; i++) {
            barTemp[i].push(offset);
            offset = offset + 1;
        }
        bar2MemInit(barTemp, bar_mut_offset, offset, mut_offset);
    }

    function bar2MemInit (uint[][] memory barTemp, uint[][] memory bar_mut_offset, uint mem_offset, uint mut_offset) public pure{
        uint[bar_mut_offset.length][2] bar2;
        for (uint i = 0; i < bar2.length; i++) {
            bar2[i][0] = barTemp[0].length + mut_offset;
            if (barTemp.length > 1){
                bar2[i][1] = barTemp[1].length + mut_offset;
            }
        }
    }
}
