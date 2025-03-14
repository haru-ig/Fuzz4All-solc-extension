pragma solidity ^0.8.0;
contract SemanticMutation3
{
    function semanticMutation(uint256[] memory a) public pure {
        a[0] = 1;
    }
}


pragma solidity ^0.8.0;
contract SemanticMutation7
{
    struct State {
        address[] a;
    }
    State state;

    function semanticMutation(address[] memory b) public pure {
        state.a.push(b[0]);
        b = new address[](1);
    }
    function semanticMutation2(address[] memory b) public pure {
        b = new address[](3);
    }
}



contract SemanticMutation
{
    function semanticMutation(uint256[] memory a) public pure {
    }

    function semanticMutation2(uint256[] memory a) public pure {
        address[] memory a_;
        a_.push(address(10));
        a_ = new address[](1);
        a_.push(a_[0]);
        a = new uint256[](2);
        a[0] = 10;
        a[1] = 1;
    }
}
