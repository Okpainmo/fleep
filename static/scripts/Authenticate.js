const Authenticate = {
    getUserAddress: async function(network = false) {
        if (typeof ethereum === 'undefined') return null

        try {
            await ethereum.request({
                method: 'eth_requestAccounts'
            });

            if (network) {
                await this.switchToPolygonMainnet()
            } else {
                await this.switchToPolygonTestnet()
            }

            const accounts = await ethereum.enable();
            return {
                message: 'Authenticated',
                address: accounts[0],
                status: true
            }
        } catch (error) {
            return {
                message: 'Failed to Authenticate',
                error: error,
                status: false
            }
        }
    },
    switchToPolygonTestnet: async function() {
        try {
            await window.ethereum.request({
                method: 'wallet_switchEthereumChain',
                params: [{ chainId: '0x13881' }],
            });
        } catch (error) {
            if (error.code === 4902) {
                try {
                    await window.ethereum.request({
                        method: 'wallet_addEthereumChain',
                        params: [{
                            chainId: '0x13881',
                            chainName: 'Polygon - Mumbai',
                            nativeCurrency: {
                                name: 'Matic',
                                symbol: 'MATIC', // 2-6 characters long
                                decimals: 18
                            },
                            blockExplorerUrls: ['https://mumbai.polygonscan.com'],
                            rpcUrls: ['https://matic-mumbai.chainstacklabs.com'],
                        }, ],
                    });
                } catch (addError) {
                    console.error(addError);
                }
            }
        }
    },
    switchToPolygonMainnet: async function() {
        try {
            await window.ethereum.request({
                method: 'wallet_switchEthereumChain',
                params: [{ chainId: '0x89' }],
            });
        } catch (error) {
            if (error.code === 4902) {
                try {
                    await window.ethereum.request({
                        method: 'wallet_addEthereumChain',
                        params: [{
                            chainId: '0x89',
                            chainName: 'Polygon - Mainnet',
                            nativeCurrency: {
                                name: 'Matic',
                                symbol: 'MATIC', // 2-6 characters long
                                decimals: 18
                            },
                            blockExplorerUrls: ['https://polygonscan.com'],
                            rpcUrls: ['https://polygon-rpc.com'],
                        }, ],
                    });
                } catch (addError) {
                    console.error(addError);
                }
            }
        }
    }
}

export default Authenticate