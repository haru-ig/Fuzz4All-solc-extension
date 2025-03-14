pragma solidity ^0.8.0;
interface State {
     uint256 getValue();
}
pragma solidity ^0.8.0;
contract State {
    uint256 private total;
    function getValue() public view returns (uint256) {
        return total;
    }
    function inc() public {
        total += 1;
    }
}
pragma solidity ^0.8.0;
contract State {
    uint256 private total;
    mapping(address => uint256) public addressToAmount;
    function getValue() public view returns (uint256) {
        return total;
    }
    function depositERC20(address tokenAddress, uint256 amount) public {
        addressToAmount[msg.sender] += amount;
    }
    function withdrawERC20(address tokenAddress, uint256 amount) public {
        require(addressToAmount[msg.sender] >= amount);
        (bool ok, ) = msg.sender.call{ value: amount }("");
        require(ok);
        require(addressToAmount[msg.sender] >= amount);
        addressToAmount[msg.sender] -= amount;
    }
}
pragma solidity ^0.8.0;


library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {



        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        uint256 c = a / b;


        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }


    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256
