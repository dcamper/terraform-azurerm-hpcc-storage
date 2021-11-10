
# Abbreviated product name, suitable for use in Azure naming.
# Must be 2-23 characters in length, all lowercase letters or numbers
# Value type: string
# Example entry: "myproduct"

product_name="sampledata"

#------------------------------------------------------------------------------

# The Azure region abbreviation in which to create these resources.
# Must be one of ["eastus2", "centralus"].
# Value type: string
# Example entry: "eastus2"

azure_region="eastus2"

#------------------------------------------------------------------------------

# Email address of the administrator of this HPCC Systems cluster.
# Value type: string
# Example entry: "jane.doe@hpccsystems.com"

admin_email="jane.doe@hpccsystems.com"

#------------------------------------------------------------------------------

# Name of the administrator of this HPCC Systems cluster.
# Value type: string
# Example entry: "Jane Doe"

admin_name="Jane Doe"

#------------------------------------------------------------------------------

# Username of the administrator of this HPCC Systems cluster.
# Value type: string
# Example entry: "jdoe"

admin_username="jdoe"

#------------------------------------------------------------------------------

# The amount of storage reserved for the landing zone in gigabytes.
# Must be 1 or more.
# OPTIONAL, defaults to 10.
# Value type: number

storage_lz_gb=10

#------------------------------------------------------------------------------

# The amount of storage reserved for data in gigabytes.
# Must be 10 or more.
# OPTIONAL, defaults to 500.
# Value type: number

storage_data_gb=500

#------------------------------------------------------------------------------

# Map of name => value tags that can will be associated with the cluster.
# Format is '{"name"="value" [, "name"="value"]*}'.
# The 'name' portion must be unique.
# To add no tags, use '{}'.
# OPTIONAL, defaults to '{}'.
# Value type: map of string

extra_tags={}