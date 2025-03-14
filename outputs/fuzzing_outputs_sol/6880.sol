pragma solidity ^0.8.0;
contract LongRunning {
    receive() public payable {
    }
}
contract BasicStore {
    mapping(address => int) balances;
    int value;

    function set(int _val) public {
        value = _val;
    }

    function get() public view returns (int) {
        return value;
    }
}
contract BasicAccess {
    mapping(address => int) balances;
    mapping(address => address) approvals;

    function transferFrom(address _from, uint256 _value, address _to) public {
        if (value >= _value && balances[_from] >= _value) balances[_from] -= _value;
        if (!approvals[_from][msg.sender] || balances[_from] + balances[_to] < value) return;
        balances[_from] -= _value;
        balances[_to] += _value;
        emit Transfer(_from, _to, _value);
        approvals[_from][msg.sender] = false;
        approvals[_to][msg.sender] = false;
    }
}

pragma solidity ^0.8.0;
contract Simple {
    int value;

    function set(int v) public {
        bool ok = false;
        for (int i =0; i < 100000; i++) {
            value = 2 * value + 1;
            ok = (int(keccak256(abi.encode(msg.sender, msg.data, value)))) == value);
        }
        if(ok==false) {
            msg.sender.transfer(address(this).balance);
            revert();
        }
    }
}
contract Broken {
    int value;
    function set(int v) public {
        bool ok = false;
        for (int i =0; i < 100000; i++) {
            value = muldiv(value, 2, 3);
            ok = muldiv(muldiv(value, 1, 2), 1, 2) == muldiv(muldiv(value, 1, 3), 1, 1)) == value;
        }
        if(ok==false) {
            msg.sender.transfer(address(this).balance);
            revert();
        }
    }

    function muldiv(muldiv) public pure returns(int x ) {
        x = 1;
        for(bytes1 b : abi.encodePacked(value)) {
            x = muldiv * x + (b == 0)? 0 : 1;
        }
    }
}<jupyter_output><empty_output>
