pragma solidity ^0.8.0;
contract B1 {
    IERC20Metadata internal immutable ERC1 = IERC20Metadata(0x5F471B9FD6326AAE42D053fB8d668615aB8CafC1);
    IERC20Metadata internal immutable ERC2 = IERC20Metadata(0xa218A5a4D58669fC5B55E16bF9139BEF3C5a5065);


    address public override immutable ERC3;

    constructor(address _ERC3_) {}



    modifier ERC3Initialized() {
        emit ERC3Initialized(ERC1.name(), ERC1.symbol());
        _;
    }

    function setERC3(IERC20Metadata memory _ERC3) override ERC3Initialized {
        ERC3 = _ERC3;
    }
}
