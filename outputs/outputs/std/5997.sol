pragma solidity ^0.8.0;
contract Semantics {
    struct Token {
        uint256 amt;
        bool claimed;
    }

    struct User {
        uint256 amount;
        address payable wallet;
    }

    Token[] tokens;
    User[] users;

    uint256 totalSupply;

    function add() public {
        address payable from = msg.sender;
        uint256 amt = msg.value;
        users.push(User(amt, from));
        totalSupply += amt;
    }

    function subtract() public {
        address payable from = msg.sender;
        uint256 amt = msg.value;
        users.push(User(amt, from));
        users[cnt].amount -= amt;
        totalSupply -= amt;
    }

    function getTokens() public view returns (Token[] memory) {
        return tokens;
    }

    function getUsers() public view returns (User[] memory) {
        return users;
    }

    function claim() public {
        address payable to = msg.sender;
        Token memory token = Token(msg.value, true);
        tokens.push(token);
        users[cnt].amount += token.amt;
        users[cnt].wallet = to;
        cnt++;
    }
}


pragma solidity ^0.8.0;
import "./Semantics.sol";
contract Olympic is Semantics {
    function olympic() public {
        Token memory token1 = Token(20, true);
        token1.claimed = true;
        Token memory token2 = Token(800, true);
        token2.claimed = true;

        bool claimed = false;
        Token memory token3 = Token(231, true);
        token3.claimed = true;

        add();
        if (msg.sender.sendValue(msg.value)) {
            users[cnt].wallet = msg.sender;
            cnt++;
        }
        else {
            users[cnt].wallet = msg.sender;
            cnt++;
        }
    }
}
