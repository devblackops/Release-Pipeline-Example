$sut = "$PSScriptRoot\ServerInfo.ps1"

Describe 'Unit Tests' {
    Context 'Parameter Validation' {
        
        $func = Get-Command -Name $sut

        it 'ComputerName parameter is mandatory' {
            $func.Parameters.ComputerName.Attributes.Mandatory | should be $true    
        }

        it 'Returns a [pscustomobject]' {
           $func.OutputType.Type.Name -eq 'PSObject' | should be $true
        }
    }
}