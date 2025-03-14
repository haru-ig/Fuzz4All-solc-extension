pragma solidity ^0.8.0;
contract SemanticDifferent3 {
    using SemanticDifferent2 as Base;

    address constant public addressOfContractWithFallbackFunc = address(0);

    mapping (uint8 => uint8) internal storageWithFallbackFunc;

    function getAndMutate() public pure {
        Base.mutate();
        uint8 value = storageWithFallbackFunc[1];
    }

    function setFallbackToAddress(address newFallbackAddr) public {
        Base.mutate();
        uint8 x1 = 1;
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        uint8 x5 = 5;
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();

        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();

        uint8 value = storageWithFallbackFunc[5];
    }

    receive() external payable {
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
        Base.mutate();
    }

    function () external payable {
        for (uint i = 200; i > 0; i--) {
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
            Base.mutate();
        }
    }

}
