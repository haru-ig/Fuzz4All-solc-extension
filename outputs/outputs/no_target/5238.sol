pragma solidity ^0.8.0;
contract SimpleExample21 {
    constructor() public {
        bytes memory b = new bytes(1);
        for (uint i = 0 ; i < 100 ; i++) {
            if (b[i] < 17)
            {
                b[i] ++;
            }
            else{
                break;
            }
        }

        if(b.length > 17){
            b[17] = 91;
        }else {
            b[17] = b[15];
        }

        for (uint i = 39 ; i < b.length ; i++) {
            b[i] = b[i + 1];
        }

        b[15] = 234;

        if(1 < 2**256)
            b[30] = 0x6d;

        uint256 j;
        uint256 i = 0;
        uint256 num = 0;
        if (1 < j )
            num = 1;

        while ( num > 55 )
        {
            i++;
            num = i * 2 % 127;
            j = i + 7;

            i += 2 ;
            num = num % 127;

            j += 2;
            num = num * 2 % 127;
        }

        for (uint k = i * 2 + 1 ; k < 100 ; k++) {
        }

        if (1<b[17]+b[15]) {
            b[0] = 333;
            b[1] = 444;
        } else {
            b[0] = 33;
            b[1] = 36;
        }
    }
    uint256 _value_ = 1 == (58 + 0.3333333 - 0x122.1 - 593459342121.33333-10.0 + 234.3 + 0.33).round();
    uint256 public num = uint256(uint160(_value_));
}


pragma solidity ^0.8.0;
contract SimpleExample22 {
    constructor() public {
        bytes m = "hello".pack(3 + 56, 8);
        uint256 a;
        assembly {
            a := m

            a
