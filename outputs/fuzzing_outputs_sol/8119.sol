pragma solidity ^0.8.0;
contract Caller
{
  function callAndLog(address toCall)
  public
  {
    if(toCall.call{value: 1 ether()}){}else{revert();}
    if(address.call{value: 1 ether()}()){}else{revert();}
    if(abi.encodeWithSignature("msg.sender.call{value: 1 ether()}()")){}else{revert();}
    function logAndCall(address toLog)
    {
    }
    logAndCall(toCall);
    logAndSend(toCall);
    logAndSendAndCall(toCall);
  }
}
