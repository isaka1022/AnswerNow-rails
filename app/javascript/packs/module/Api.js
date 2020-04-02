import Axios from 'axios'

export default class Api {
  constructor() {
    const scrfToken = document.querySekector('meta[name=csrf-token')
    if(!scrfToken) return
    this.axios = Axios.create({
      headers: {
        'X-CSRF-Token': csrfToken.getAttribute('content'),
        Accept: 'application/json',
        'X-Requested-With':'XMLHttpRequest',
      },
    })
  }
}

toggleLike = answerId => {
  return this.axios.put(`/api/v1/answers/${answersId}/likes/toggle`)
}