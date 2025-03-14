pragma solidity ^0.8.0;
contract Convert {


}
contract Array {


}


pragma solidity ^0.8.0;
contract Convert {


    uint256[10] a1 = [1];
    uint256[10] a2 = uint256[10](a1 + a1);
}
contract Array {


    address[10] a1 = [0xFFF1E3FDA5DBF09BFCFB1E50062A2DBA12C21ABE0C62557DB39798F668C7137A];
    address[10] a2 = address[](uint8[10](a1 + a1));
}
