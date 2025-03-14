pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    uint8 internal x;
    uint8 public y;
    constructor() {
      x = 10;
      y = 15;
      _incrementNumberB();
      _incrementNumberB();
      _incrementNumberB();
    }
    function _incrementNumberB() internal {
      _number += 1;
    }
}");
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition1() {
            var result = await RunScript(
                new[] { "test.sol" }, "Solidity.Compiler.CompilerException: Invalid contract definition",
                CompilerMode.Solidity
            );
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition2() {
            var result = await RunScript(
                new[] { "test.sol" }, "Solidity.Compiler.CompilerException: Invalid contract definition",
                CompilerMode.Dafny
            );
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition3() {
            var result = await RunScript(
                new[] { "test.sol" }, "Solidity.Compiler.CompilerException: Cannot locate script for 'B'",
                CompilerMode.Solidity
            );
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition4() {
            var result = await RunScript(
                new[] { "test.sol" }, "Solidity.Compiler.CompilerException: Cannot locate script for 'B'",
                CompilerMode.Dafny
            );
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition5() {
            var result = await RunScript(new string[0], "Solidity.Compiler.CompilerException: Cannot invoke function'someFunc()'",
                CompilerMode.Solidity);
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestInvalidContractDefinition6() {
            var result = await RunScript(new string[0], "Solidity.Compiler.CompilerException: Cannot invoke function'someFunc()'",
                CompilerMode.Dafny);
            Assert.AreEqual(Result.Failure, result);
        }

        [TestMethod]
        public async Task TestValidContract() {
            var result = await RunScript(
                new[] { "test.sol" }, "",
                CompilerMode.Solidity
            );
            Assert.AreEqual(Result.Success, result);
        }

        [TestMethod]
        public async Task TestValidContract2() {
            var result = await RunScript(
                new[] { "test.sol" }, "",
                CompilerMode.Dafny
            );
