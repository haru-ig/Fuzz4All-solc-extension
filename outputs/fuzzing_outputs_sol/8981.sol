pragma solidity ^0.8.0;
contract Governor {
  uint256 public electionTime;
  uint256 public blockTime;
  uint256 public quorum;

  MemoizableMatematician public memoryGovernor;
  ERC1761 public matematician;


  bytes32 public name;
  bytes32 public symbol;
  address public owner;
  uint256 public limitRate;

  constructor(
    Governor _matematician,
    uint256 _electionTime,
    uint256 _blockTime,
    uint256 _quorum,
    bytes32 _name,
    bytes32 _symbol,
    address _owner,
    uint256 _limit
  ) public {
    owner = _owner;
    memoryGovernor = MemoizableMatematician(_matematician);
    name = _name;
    symbol = _symbol;
    blockTime = _blockTime;
    quorum = _quorum;
    limitRate = _limit;
    resetElectionTime();
  }


  function setElectionTime(uint256 _newElectionTime) public onlyOwner {
    electionTime = _newElectionTime;
    resetElectionTime();
  }


  function setBlockTime(uint256 _newBlockTime) public onlyOwner {
    blockTime = _newBlockTime;
    resetElectionTime();
  }


  function setTransferFailure(_bool) public onlyOwner {
    _ = setTransferFailure(1e4, 1e10);
  }


  function setTransferSuccess(_bool) public onlyOwner {
    _ = setTransferFailure(0, 1e8);
  }


  function setTransferFirstAttempt(_bool) public onlyOwner {
    _ = setTransferFailure(1e7, 1e3);
  }

  function setTransferFailure(uint256 _firstAttempt, uint256 _duration) public onlyOwner {

    uint256 time = block.timestamp;
    if (time >= (_firstAttempt + _duration)) {
      _ = memoryGovernor.setMemory
