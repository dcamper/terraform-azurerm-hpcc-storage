
# Abbreviated product name, suitable for use in Azure naming.
# Must be 3-16 characters in length, all lowercase letters or numbers, no spaces.
# Value type: string
# Example entry: "my-product"

product_name="sample-data"

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

# Map of name => value tags that can will be associated with the cluster.
# Format is '{"name"="value" [, "name"="value"]*}'.
# The 'name' portion must be unique.
# To add no tags, use '{}'.
# Value type: map of string

extra_tags={}