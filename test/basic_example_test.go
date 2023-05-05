package test

import (
	"os"
	"testing"

	TTAWS "github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"

	"github.com/stretchr/testify/assert"

	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/ssooidc"
)

func TestTerraformBasicExample(t *testing.T) {
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/basic-example",
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	security_group_id := terraform.Output(t, terraformOptions, "security_group_id")
	assert.NotEmpty(t, security_group_id)

	sess, err := NewSession(os.Getenv("AWS_REGION"))
	assert.NoError(t, err)

	client := ssooidc.New(sess)

	// TODO no API to list providers?
}

func NewSession(region string) (*session.Session, error) {
	sess, err := TTAWS.NewAuthenticatedSession(region)
	if err != nil {
		return nil, err
	}

	return sess, nil
}
