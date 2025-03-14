pragma solidity ^0.8.0;
contract Contract4 {
    struct User {
        address _address;
        uint256 _amount;
    }


    function Contract4() {
        contract AddUser(uint amount) {
            address self1 = address(this);
            contract User storage user1 = User(_address: self1, _amount: amount);
            address self2 = address(this);
            contract User storage user2 = User(_address: self2, _amount: amount);
            uint256 sum = user1._amount + user2._amount;
            emit Evt(sum);
        }
    }
    event Evt(uint256 _amount);
}
pragma solidity ^0.8.0;
import "./MutateSemantic5WithCaller2.sol";
contract MutateSemantic5 {
    using MutateSemantic5WithCaller2 for MutateSemantic5WithCaller2.mutate;
    function main() {
        MutateSemantic5WithCaller2 memory user = MutateSemantic5WithCaller2(msg.sender, 10000);
        user.modifyF(20000);
    }
}
