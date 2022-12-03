// // helper functions during @dev

// // calls in the constructor
// function testnetHelper() private onlyDeployer {
//     updateNativePair(0xd0D5e3DB44DE05E9F294BB0a3bEEaF030DE24Ada);
//     updateUSDTPair(0xd5062391b4f3Eed59EE24D198F56183DFEaC7576);
//     updateFleepPair(0x69C02513F5Af6651B80207003a4bcAA530605a03);

//     // WBTC
//     createPair(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0x007A22900a3B98143368Bd5906f8E17e9867581b
//     );

//     // DAI
//     createPair(
//         0xE9c6AbB1369159809D9f874C1A3a032019570F8C,
//         0x0FCAa9c899EC5A91eBc3D5Dd869De833b06fB046
//     );

//     // WETH
//     createPair(
//         0x60D4A61940Ac5e59cbdaF05E7F702B26048320bF,
//         0x0715A7794a1dc8e42615F059dD6e406A6594651A
//     );

//     // MATIC
//     createPair(NATIVE_PAIR, NATIVE_PAIR);

//     // SAND
//     createPair(
//         0xaCeD5967a5a60b29007968AD55904fbCd660e6D8,
//         0x9dd18534b8f456557d11B9DDB14dA89b2e52e308
//     );

//     // USDC
//     createPair(
//         0x7E0577066d3B4DE9869F4178791b702694a0c17c,
//         0x572dDec9087154dC5dfBB1546Bb62713147e0Ab0
//     );

//     // USDT
//     createPair(
//         0xd5062391b4f3Eed59EE24D198F56183DFEaC7576,
//         0x92C09849638959196E976289418e5973CC96d645
//     );
// }

// // called by any provider
// function testnetHelper2() public {
//     createPool(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0xE9c6AbB1369159809D9f874C1A3a032019570F8C
//     ); // WBTC => DAI : 1
//     createPool(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0x60D4A61940Ac5e59cbdaF05E7F702B26048320bF
//     ); // WBTC => WETH : 2
//     createPool(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0xaCeD5967a5a60b29007968AD55904fbCd660e6D8
//     ); // WBTC => SAND : 3
//     createPool(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0x7E0577066d3B4DE9869F4178791b702694a0c17c
//     ); // WBTC => USDC : 4
//     createPool(
//         0xc4BC789ee50DdAf8243fFD65C7Fc8776b8D334ac,
//         0xd5062391b4f3Eed59EE24D198F56183DFEaC7576
//     ); // WBTC => USDT : 5
//     createPool(
//         0x60D4A61940Ac5e59cbdaF05E7F702B26048320bF,
//         0xd5062391b4f3Eed59EE24D198F56183DFEaC7576
//     ); // WETH => USDT : 6
//     createPool(
//         0x60D4A61940Ac5e59cbdaF05E7F702B26048320bF,
//         0xaCeD5967a5a60b29007968AD55904fbCd660e6D8
//     ); // WETH => SAND : 7
//     createPool(
//         0xaCeD5967a5a60b29007968AD55904fbCd660e6D8,
//         0xd5062391b4f3Eed59EE24D198F56183DFEaC7576
//     ); // SAND => USDT : 8
//     createPool(
//         0xaCeD5967a5a60b29007968AD55904fbCd660e6D8,
//         0xE9c6AbB1369159809D9f874C1A3a032019570F8C
//     ); // SAND => DAI : 9
//     createPool(
//         0xE9c6AbB1369159809D9f874C1A3a032019570F8C,
//         0x60D4A61940Ac5e59cbdaF05E7F702B26048320bF
//     ); // DAI => WETH : 10
//     createPool(NATIVE_PAIR, 0xd5062391b4f3Eed59EE24D198F56183DFEaC7576); // MATIC => USDT : 11
// }
