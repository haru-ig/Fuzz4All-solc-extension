pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        if (false==true) {
            return;
        }
    }
}
contract Semantic0030 {
    function same() public pure{
    if (false==false) {
        revert();
    }
}
contract Semantic0030 {


    function test() public pure {
        require(same() == false, "true");
    }




    function test(bytes32[] memory b) public pure {
        require(b.length == 0, "true");
    }

    function same() public pure {
        return true;
    }
}
interface IERC20 {
    function balanceOf(address account) external view returns (uint256 balance);
}

contract Semantic0030{
    address payable owner;
    IERC20 public ERC;

    modifier only(address account) {
        _;
    }

    constructor(address erc){
        ERC = IERC20(erc);
        owner = msg.sender;
    }



    function test() public pure {
        address _ = msg.sender;
        msg.sender;
    }




    function test(bytes32[] memory b) public pure {
        address _ = msg.sender;
        msg.sender;
    }

    function deposit() public payable returns(bool){
        address _ = msg.sender;

    }

    function withdraw() public returns(bool){
        address _ = msg.sender;
        IERC20 _ERC = IERC20(_);
        if (_ERC.balanceOf(address(this)) > 20){
            return true;
        }
    }
}
