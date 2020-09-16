import BaseArray from './BaseArray'
import BaseForm from './BaseForm'
import BaseFormButtonBar from './BaseFormButtonBar'
import BaseFormGroup from './BaseFormGroup'
import BaseFormGroupInput from './BaseFormGroupInput'
import BaseFormGroupSelectOne from './BaseFormGroupSelectOne'
import BaseFormGroupToggle from './BaseFormGroupToggle'
import BaseFormGroupToggleDisabledEnabled from './BaseFormGroupToggleDisabledEnabled'
import BaseFormGroupToggleOffOn from './BaseFormGroupToggleOffOn'
import BaseFormTab from './BaseFormTab'
import BaseInput from './BaseInput'
import BaseInputPassword from './BaseInputPassword'
import BaseInputGroup from './BaseInputGroup'
import BaseInputRange from './BaseInputRange'
import BaseInputSelectOne from './BaseInputSelectOne'

import { mergeProps } from './utils'

export {
  // form
  BaseForm,
  BaseFormButtonBar,
  BaseFormTab,

  // form group
  BaseFormGroup,
  BaseFormGroupInput,
  BaseFormGroupSelectOne,
  BaseFormGroupToggle,
  BaseFormGroupToggleDisabledEnabled,
  BaseFormGroupToggleOffOn,

  // form inputs
  BaseInput,
  BaseInputPassword,
  BaseInputRange,
  BaseInputSelectOne,

  // bootstrap wrappers
  BaseInputGroup,

  // array wrapper
  BaseArray,

  // utils
  mergeProps
}