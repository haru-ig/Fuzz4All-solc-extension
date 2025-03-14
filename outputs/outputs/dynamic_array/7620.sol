pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_10_2018 {
    uint A;
    function a() public{
        uint x;
        x = 0;
        a();
        x = 10;
    }
}
pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_10_2019 {
    uint A;
    function a() public{
        uint x = 0;
        x = 0;
        a();
        x = 10;
    }
}
