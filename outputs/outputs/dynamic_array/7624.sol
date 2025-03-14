pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_11{
    uint A;

    function a() public{
        A = 0;
        assembly{
            a()
        }
        A = 10;
    }
}
contract Test15_semanticallyEquivalent_12{
    uint A;
    function a() public returns(uint){
        A = 0;
        return a();
    }
}
contract Test15_semanticallyEquivalent_13{
    uint A;

    function a() public {
        A = 0;
        uint X = a();
        A = 10;
        assert(X == 10);
    }
}
