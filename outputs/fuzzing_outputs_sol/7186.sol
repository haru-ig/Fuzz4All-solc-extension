pragma solidity ^0.8.0;

address addr1;
address payable addr2;
Example3 fallbackExample;
Example3 mutatedExample;

IExample3Example2Example3Example4 nonExistingExample;
IExample3Example2 Example2Example3Example4;
IExample3Example2Example2Example3Example4 nonExistingExampleAgain;
IExample3Example2Example2Example3Example4Example5 nonExistingExampleLast;

function test() public payable {
    mutatedExample.setExample1(msg.sender);
    mutatedExample.setExample2(addr1);
    mutatedExample.setExample3(addr2);
    mutatedExample.setExample4(fallbackExample);
    mutatedExample.setNewExample5(nonExistingExample);
    mutatedExample.setNewExample5(nonExistingExampleAgain);
    mutatedExampleExample2Example3Example4Example5.setNewExample5(nonExistingExampleLast);
    nonExistingExample.setNewExample5(nonExistingExampleLast);
    mutatedExampleExample2Example3Example4Example5.setNewExample5(nonExistingExampleLast);
    bytes memory buffer = abi.encodeWithSignature("mutatedExample.setExample5(address)", addr2);
    bytes32 hashed;
    address addr3 = addr2;
    hashed = keccak256(buffer);
    require(nonExistingExample.isValid(213798));
    require(nonExistingExampleAgain.isValid(62763));
    require(nonExistingExampleLast.isValid(254921));
    require(nonExistingExample.getCheckFor() == hashed);
    require(nonExistingExampleAgain.getCheckFor() == hashed);
    require(nonExistingExampleLast.getCheckFor() == hashed);
    addr3.call(buffer);
}
