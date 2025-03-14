pragma solidity ^0.8.0;
contract TestFallback8
{
  struct State
  {
    mapping(address => uint256) data;
    mapping(address => uint256) calls;
  }

  struct Call
  {
    uint256 amount;
    mapping(address => State) s;
    mapping(address => address) c;
    bytes message;
  }

  State public state;
  mapping(address => Call[]) public calls;

  constructor ()
  {
    state.data[msg.sender]++;
    state.calls[msg.sender][address(this)]
    .s[address(this)] = state.data[msg.sender];
    state.data[msg.sender]--;
    state.calls[msg.sender][address(this)]
    .s[address(this)] = state.data[msg.sender];
  }

  function (uint) public returns (uint)
  {
    return (state.calls[msg.sender][address(this)].s[msg.sender]);
  }

  receive() external payable
  {
    state.calls[msg.sender][address(this)].c[msg.sender] = address(this);
    uint amount = state.data[msg.sender];
    state.calls[msg.sender][address(this)].s[msg.sender]
      = state.data[msg.sender] -= amount;
    emit CallAdded(msg.sender, amount, state.calls[msg.sender].length);
  }

  function addCall(uint amount, address to, address from)
    public
    payable
  {
    address c = to;
    require(state.data[c] <= amount);

    state.calls[c][amount].message = msg.data;
    state.calls[c][amount].c[from] = msg.sender;
    state.calls[c][amount].amount = amount;
    state.data[c] -= amount;
  }
}
