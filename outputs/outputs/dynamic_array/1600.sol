pragma solidity ^0.8.0;
contract MutatedDynamicArrays5 {
}

pragma solidity ^0.8.0;
contract DynamicArrayUseCases  {

    function use_case_1 () public pure returns (uint16, uint8[10]) {
        uint16 size = 47;
        uint8 varr[size];

        varr[1] = 1;

        return (size, varr);
    }


    function use_case_2 () public returns (uint8) {
        uint16 size = 53;
        uint8 memory varr[size];
        uint8[1] memory varr2;

        varr2.push(1);
        varr[80]=1;

        for (uint i = 1; i <= 50; i++) {
            varr[i] = 1;
        }

        varr = varr + 80;
        return varr[50];
    }


    function use_case_3 () public {
        uint16 size = 9;
        uint8 varr[size];

        uint8 testValue = 1;
        varr[size-1] = testValue;
        emit Debug(testValue);
    }


    function use_case_4 () public pure returns (uint16, uint8[10]) {
        uint16 size = 48;
        uint8 varr[size];

        varr[1] = 1;
        varr[30]+=7;

        return (size, varr);
    }


    event Debug(uint8 value);

}
