pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address payable _addr) public {
        smartContract2 = _addr;
    }
    address payable public smartContract2;
}


pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    receive() external payable {



        assembly {

            mstore(

            add(mstore(0x40, 0), 32) +

            add(mstore(0x40, 0), 20),
            0xa0
            )

            switch

           case 0x02 { revert(0x2602) }
           default { revert(0x538560ff) }
        }
    }
}
