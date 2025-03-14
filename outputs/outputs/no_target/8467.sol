pragma solidity ^0.8.0;

    contract Unmodifable
    {
        mapping (address => uint) balances;

        address payable owner;

        constructor() public {
            owner = msg.sender;
        }

        function transfer(address _to, uint _value) public {
            require(msg.sender!= _to);
            balances[msg.sender] = balances[msg.sender].sub(_value);
            balances[_to] = balances[_to].add(_value);
            emit Transfer(msg.sender, _to, _value);
        }

        function transferFrom(address _from, address _to, uint _value) public {
            require(balances[_from] >= _value);
            balances[_from] = balances[_from].sub(_value);
            balances[_to] = balances[_to].add(_value);
            emit Transfer(_from, _to, _value);
        }

        function balanceOf(address _owner) external view returns (uint balance) {
            return balances[_owner];
        }

        function owner() public view returns (address owner_) {
            return owner_;
        }
    }
